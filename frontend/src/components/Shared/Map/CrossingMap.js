import React from 'react';
import { graphql, compose } from 'react-apollo';
import * as MapboxGl from 'mapbox-gl';
import ReactMapboxGl, { Layer, Feature } from "react-mapbox-gl";
import mapboxstyle from 'components/Shared/Map/mapboxstyle.json';
import allCrossings from 'components/Shared/Map/queries/allCrossingsQuery';
import 'components/Shared/Map/CrossingMap.css';
import _ from 'lodash';

const Map = ReactMapboxGl({ accessToken: null, attributionControl: false });

const STATUS_OPEN = 1;
const STATUS_CLOSED = 2;
const STATUS_CAUTION = 3;
const STATUS_LONGTERM = 4;

class CrossingMap extends React.Component {
  state = {
    selectedCrossingId: -1, // Mapbox filters don't support null values
    selectedCrossing: null,
    selectedCrossingCoordinates: null,
    firstLoadComplete: false,
    center: [
      (this.props.viewport[0][0]+this.props.viewport[1][0])/2,
      (this.props.viewport[0][1]+this.props.viewport[1][1])/2
    ]
  }

  componentWillReceiveProps(nextProps) {
    if (nextProps.selectedCrossingId !== this.props.selectedCrossingId) {
      if (nextProps.selectedCrossingId) {
        this.setState({selectedCrossingId: nextProps.selectedCrossingId})
      } else {
        this.setState({selectedCrossingId: -1});
        this.setState({selectedCrossing: null });
      }
    }

    const { selectedCrossing } = this.state;
    if (selectedCrossing && nextProps.selectedCrossingStatus && (nextProps.selectedCrossingStatus !== selectedCrossing.crossingStatus) ) {
      selectedCrossing.crossingStatus = nextProps.selectedCrossingStatus;
      this.setState({selectedCrossing: selectedCrossing});
    }

    // This is a slightly strange litle fix here, we used to check loading in render, and not render the map until it loaded
    // that worked well for a single query, but led to the map disappearing on search. I then updated it to hide the crossing
    // layers instead of hiding the whole map on load, but this led to the map not correctly filling the containing div. By checking
    // that it has fully loaded before rendering the first time this problem can be avoided.
    if (!this.state.firstLoadComplete) {
      const isLoading = (
        !nextProps.openCrossings || nextProps.openCrossings.loading ||
        !nextProps.closedCrossings || nextProps.closedCrossings.loading ||
        !nextProps.cautionCrossings || nextProps.cautionCrossings.loading ||
        !nextProps.longtermCrossings || nextProps.longtermCrossings.loading
      );
      this.setState({firstLoadComplete: this.state.firstLoadComplete || !isLoading});
    }
  }

  onMapboxStyleLoad = (map) => {
    this.setState({ map: map });
    this.addZoomControl(map);
    this.addGeoLocateControl(map);
    this.addCrossingClickHandlers(map);
    this.addUpdateVisibleCrossingHandlers(map);
    // disable map rotation using right click + drag
    map.dragRotate.disable();

    // disable map rotation using touch rotation gesture
    map.touchZoomRotate.disableRotation();
  }

  addGeoLocateControl (map) {
    const geolocateControl = new MapboxGl.GeolocateControl({
      positionOptions: {
        enableHighAccuracy: true
      },
      fitBoundsOptions: {
        maxZoom: 15
      },
      watchPosition: true,
      showUserLocation: true
    });

    map.addControl(geolocateControl, 'bottom-right');
  }

  addZoomControl (map) {
    const zoomControl = new MapboxGl.NavigationControl();
    map.addControl(zoomControl, 'bottom-right');
  }

  addUpdateVisibleCrossingHandlers (map) {
    map.on('moveend', this.updateVisibleCrossings);
    map.on('data', this.updateVisibleCrossings);
  }

  updateVisibleCrossings = (e) => {
    if (e.type === 'data' && !e.isSourceLoaded ) return;

    const { showOpen,
            showClosed,
            showCaution,
            showLongterm,
            openCrossings,
            closedCrossings,
            cautionCrossings,
            longtermCrossings } = this.props;

    const { map } = this.state;

    const layersToQuery = [showOpen && !openCrossings.loading ? 'openCrossings' : null,
                           showClosed && !closedCrossings.loading ? 'closedCrossings' : null,
                           showCaution && !cautionCrossings.loading ? 'cautionCrossings' : null,
                           showLongterm && !longtermCrossings.loading ? 'longtermCrossings' : null].filter(l => l !== null);
    const features = map.queryRenderedFeatures({layers:layersToQuery});
    const crossings = _.uniqBy(features.map(f => (
                                             {id: f.properties.crossingId,
                                              latestStatus: f.properties.latestStatusCreatedAt,
                                              statusId: f.properties.crossingStatus,
                                              crossingName: f.properties.crossingName,
                                              communityIds: JSON.parse(f.properties.communityIds) })), 'id');
    
    // Get the first 10 visible crossings by latest status for the results
    this.props.setVisibleCrossings(_.slice(_.orderBy(crossings, ['latestStatus'], ['desc']), 0, 10));
  }

  addCrossingClickHandlers (map) {
     map.on('click', this.onMapClick);
  }

  onCrossingClick = (crossing) => {
    this.setState({ selectedCrossingId: crossing.properties.crossingId });
    this.setState({ selectedCrossing: crossing.properties });
    this.setState({ selectedCrossingCoordinates: crossing.geometry.coordinates });
    this.setState({ center: crossing.geometry.coordinates });
    this.props.selectCrossing(crossing.properties.crossingId, crossing.properties.crossingStatus, crossing.properties.crossingName);
  }

  onMapClick = (e) => {
    const { map } = this.state;
    const features = map.queryRenderedFeatures(e.point);

    if (features && features[0] && features[0].properties.crossingId) {
      this.onCrossingClick(features[0]);
    } else {
      this.setState({ selectedCrossingId: -1 });
      this.setState({ selectedCrossing: null });
      this.setState({ selectedCrossingCoordinates: null });
      this.props.selectCrossing(null, null);      
    }
  }

  render () {
    const isLoading = (
      !this.props.openCrossings || this.props.openCrossings.loading ||
      !this.props.closedCrossings || this.props.closedCrossings.loading ||
      !this.props.cautionCrossings || this.props.cautionCrossings.loading ||
      !this.props.longtermCrossings || this.props.longtermCrossings.loading
    );

    if (!isLoading && (
        this.props.openCrossings.searchCrossings == null ||
        this.props.closedCrossings.searchCrossings == null ||
        this.props.cautionCrossings.searchCrossings == null ||
        this.props.longtermCrossings.searchCrossings == null)) {
      // TODO: add error logging
      return (<div>Error Loading Crossings</div>);
    }

    const { firstLoadComplete } = this.state;
    if (!firstLoadComplete) return null;

    const openCrossings = !isLoading ? this.props.openCrossings.searchCrossings.nodes : null;
    const closedCrossings = !isLoading ? this.props.closedCrossings.searchCrossings.nodes : null;
    const cautionCrossings = !isLoading ? this.props.cautionCrossings.searchCrossings.nodes : null;
    const longtermCrossings = !isLoading ? this.props.longtermCrossings.searchCrossings.nodes : null;

    const { showOpen, showClosed, showCaution, showLongterm } = this.props;

    return (
      <Map
        onStyleLoad={this.onMapboxStyleLoad}
        style={mapboxstyle}
        containerStyle={{
          height: this.props.mapHeight,
          width: this.props.mapWidth,
          display: "block"
        }}
        fitBounds={this.props.viewport}
        center={this.state.center} >
        {!isLoading && showOpen && (
          <Layer
            type="symbol"
            id="openCrossings"
            layout={{ 'icon-image': 'open', 'icon-allow-overlap': true }}
            layerOptions={{"filter":
              [
                "all",
                ["!=", "crossingId", this.state.selectedCrossingId],
              ]
            }}
            >
            {
              openCrossings.map((crossing, i) => {
                return(
                     <Feature key={i}
                              coordinates={JSON.parse(crossing.geojson).coordinates}
                              properties={{"crossingStatus": crossing.latestStatusId,
                                           "crossingId": crossing.id,
                                           "geojson": crossing.geojson,
                                           "latestStatusCreatedAt": crossing.latestStatusCreatedAt,
                                           "crossingName": crossing.name,
                                           "communityIds": crossing.communityIds }}/>
                )}
              )
            }
          </Layer>
        )}
        {!isLoading && showLongterm && (
          <Layer
            type="symbol"
            id="longtermCrossings"
            layout={{ 'icon-image': 'longterm', 'icon-allow-overlap': true }}
            layerOptions={{"filter":
              [
                "all",
                ["!=", "crossingId", this.state.selectedCrossingId],
              ]
            }}
            >
            {
              longtermCrossings.map((crossing, i) => {
                return(
                     <Feature key={i}
                              coordinates={JSON.parse(crossing.geojson).coordinates}
                              properties={{"crossingStatus": crossing.latestStatusId,
                                           "crossingId": crossing.id,
                                           "geojson": crossing.geojson,
                                           "latestStatusCreatedAt": crossing.latestStatusCreatedAt,
                                           "crossingName": crossing.name,
                                           "communityIds": crossing.communityIds }}/>
                )}
              )
            }
          </Layer>
        )}
        {!isLoading && showCaution && (
          <Layer
            type="symbol"
            id="cautionCrossings"
            layout={{ 'icon-image': 'caution', 'icon-allow-overlap': true }}
            layerOptions={{"filter":
              [
                "all",
                ["!=", "crossingId", this.state.selectedCrossingId],
              ]
            }}
            >
            {
              cautionCrossings.map((crossing, i) => {
                return(
                     <Feature key={i}
                              coordinates={JSON.parse(crossing.geojson).coordinates}
                              properties={{"crossingStatus": crossing.latestStatusId,
                                           "crossingId": crossing.id,
                                           "geojson": crossing.geojson,
                                           "latestStatusCreatedAt": crossing.latestStatusCreatedAt,
                                           "crossingName": crossing.name,
                                           "communityIds": crossing.communityIds }}/>
                )}
              )
            }
          </Layer>
        )}
        {!isLoading && showClosed && (
          <Layer
            type="symbol"
            id="closedCrossings"
            layout={{ 'icon-image': 'closed', 'icon-allow-overlap': true }}
            layerOptions={{"filter":
              [
                "all",
                ["!=", "crossingId", this.state.selectedCrossingId],
              ]
            }}
            >
            {
              closedCrossings.map((crossing, i) => {
                return(
                     <Feature key={i}
                              coordinates={JSON.parse(crossing.geojson).coordinates}
                              properties={{"crossingStatus": crossing.latestStatusId,
                                           "crossingId": crossing.id,
                                           "geojson": crossing.geojson,
                                           "latestStatusCreatedAt": crossing.latestStatusCreatedAt,
                                           "crossingName": crossing.name,
                                           "communityIds": crossing.communityIds }}/>
                )}
              )
            }
          </Layer>
        )}
        {!isLoading && (
          <Layer
            type="symbol"
            id="selectedLongtermCrossing"
            layout={{ 'icon-image': 'longterm_selected', 'icon-allow-overlap': true }}
            >
            { (this.state.selectedCrossing && (this.state.selectedCrossing.crossingStatus === STATUS_LONGTERM)) ?
                <Feature key={1}
                  coordinates={JSON.parse(this.state.selectedCrossing.geojson).coordinates}
                  properties={{"crossingStatus": this.state.selectedCrossing.crossingStatus, "crossingId": this.state.selectedCrossing.crossingId, "geojson": this.state.selectedCrossing.geojson}} />
              : null
            }
          </Layer>
        )}
        {!isLoading && (
          <Layer
            type="symbol"
            id="selectedCautionCrossing"
            layout={{ 'icon-image': 'caution_selected', 'icon-allow-overlap': true }}
            >
            { (this.state.selectedCrossing && (this.state.selectedCrossing.crossingStatus === STATUS_CAUTION)) ?
                <Feature key={1}
                  coordinates={JSON.parse(this.state.selectedCrossing.geojson).coordinates}
                  properties={{"crossingStatus": this.state.selectedCrossing.crossingStatus, "crossingId": this.state.selectedCrossing.crossingId, "geojson": this.state.selectedCrossing.geojson}} />
              : null
            }
          </Layer>
        )}
        {!isLoading && (
          <Layer
            type="symbol"
            id="selectedClosedCrossing"
            layout={{ 'icon-image': 'closed_selected', 'icon-allow-overlap': true }}
            >
            { (this.state.selectedCrossing && (this.state.selectedCrossing.crossingStatus === STATUS_CLOSED)) ?
                <Feature key={1}
                  coordinates={JSON.parse(this.state.selectedCrossing.geojson).coordinates}
                  properties={{"crossingStatus": this.state.selectedCrossing.crossingStatus, "crossingId": this.state.selectedCrossing.crossingId, "geojson": this.state.selectedCrossing.geojson}} />
              : null
            }
          </Layer>
        )}
        {!isLoading && (
          <Layer
            type="symbol"
            id="selectedOpenCrossing"
            layout={{ 'icon-image': 'open_selected', 'icon-allow-overlap': true }}
            >
            { (this.state.selectedCrossing && (this.state.selectedCrossing.crossingStatus === STATUS_OPEN)) ?
                <Feature key={1}
                  coordinates={JSON.parse(this.state.selectedCrossing.geojson).coordinates}
                  properties={{"crossingStatus": this.state.selectedCrossing.crossingStatus, "crossingId": this.state.selectedCrossing.crossingId, "geojson": this.state.selectedCrossing.geojson}} />
              : null
            }
          </Layer>
        )}
      </Map>
    );
  }

}

export default compose(
  graphql(allCrossings, {
    name: 'openCrossings',
    options: (ownProps) => ({
      variables: {
        search: ownProps.searchQuery,
        showOpen: true,
        showClosed: false,
        showCaution: false,
        showLongterm: false,
        communityId: (ownProps.currentUser && ownProps.currentUser.role !== "floods_super_admin") ? ownProps.currentUser.communityId : null
      }
    })
  }),
  graphql(allCrossings, {
    name: 'closedCrossings',
    options: (ownProps) => ({
      variables: {
        search: ownProps.searchQuery,
        showOpen: false,
        showClosed: true,
        showCaution: false,
        showLongterm: false,
        communityId: (ownProps.currentUser && ownProps.currentUser.role !== "floods_super_admin") ? ownProps.currentUser.communityId : null
      }
    })
  }),
  graphql(allCrossings, {
    name: 'cautionCrossings',
    options: (ownProps) => ({
      variables: {
        search: ownProps.searchQuery,
        showOpen: false,
        showClosed: false,
        showCaution: true,
        showLongterm: false,
        communityId: (ownProps.currentUser && ownProps.currentUser.role !== "floods_super_admin") ? ownProps.currentUser.communityId : null
      }
    })
  }),
  graphql(allCrossings, {
    name: 'longtermCrossings',
    options: (ownProps) => ({
      variables: {
        search: ownProps.searchQuery,
        showOpen: false,
        showClosed: false,
        showCaution: false,
        showLongterm: true,
        communityId: (ownProps.currentUser && ownProps.currentUser.role !== "floods_super_admin") ? ownProps.currentUser.communityId : null
      }
    })
  })
)(CrossingMap);
