import React from 'react';
import * as MapboxGl from 'mapbox-gl';
import ReactMapboxGl, { Layer, Feature } from 'react-mapbox-gl';
import mapboxstyle from 'components/Shared/Map/mapboxstyle.json';
import 'components/Shared/Map/CrossingMap.css';

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
    selectedLocationCoordinates: null,
    firstLoadComplete: false,
  };

  componentWillReceiveProps(nextProps) {
    // If we've selected a crossing
    if (nextProps.selectedCrossingId !== this.props.selectedCrossingId) {
      if (nextProps.selectedCrossingId) {
        this.setState({ selectedCrossingId: nextProps.selectedCrossingId });
        const crossing =
          this.props.openCrossings.find(
            c => c.id === nextProps.selectedCrossingId,
          ) ||
          this.props.closedCrossings.find(
            c => c.id === nextProps.selectedCrossingId,
          ) ||
          this.props.cautionCrossings.find(
            c => c.id === nextProps.selectedCrossingId,
          ) ||
          this.props.longtermCrossings.find(
            c => c.id === nextProps.selectedCrossingId,
          );
        this.selectCrossing(crossing);
      } else {
        this.setState({ selectedCrossingId: -1 });
        this.setState({ selectedCrossing: null });
      }
    }

    const { selectedCrossing } = this.state;
    if (
      selectedCrossing &&
      nextProps.selectedCrossingStatus &&
      nextProps.selectedCrossingStatus !== selectedCrossing.crossingStatus
    ) {
      selectedCrossing.crossingStatus = nextProps.selectedCrossingStatus;
      this.setState({ selectedCrossing: selectedCrossing });
    }

    // If we are selecting a location, fly to it
    if (
      nextProps.selectedLocationCoordinates !==
      this.state.selectedLocationCoordinates
    ) {
      this.setState({
        selectedLocationCoordinates: nextProps.selectedLocationCoordinates,
      });
      if (nextProps.selectedLocationCoordinates) {
        this.flyTo(nextProps.selectedLocationCoordinates);
      }
    }

    // This is a slightly strange litle fix here, we used to check loading in render, and not render the map until it loaded
    // that worked well for a single query, but led to the map disappearing on search. I then updated it to hide the crossing
    // layers instead of hiding the whole map on load, but this led to the map not correctly filling the containing div. By checking
    // that it has fully loaded before rendering the first time this problem can be avoided.
    if (!this.state.firstLoadComplete) {
      const isLoading =
        !nextProps.openCrossings ||
        !nextProps.closedCrossings ||
        !nextProps.cautionCrossings ||
        !nextProps.longtermCrossings;
      this.setState({
        firstLoadComplete: this.state.firstLoadComplete || !isLoading,
      });
    }
  }

  onMapboxStyleLoad = map => {
    this.setState({ map: map });
    this.addZoomControl(map);
    this.addGeoLocateControl(map);
    this.addCrossingClickHandlers(map);

    // update the map page center on map move
    map.on('moveend', this.getMapCenter);

    // disable map rotation using right click + drag
    map.dragRotate.disable();

    // disable map rotation using touch rotation gesture
    map.touchZoomRotate.disableRotation();
  };

  addGeoLocateControl(map) {
    const geolocateControl = new MapboxGl.GeolocateControl({
      positionOptions: {
        enableHighAccuracy: true,
      },
      fitBoundsOptions: {
        maxZoom: 15,
      },
      watchPosition: true,
      showUserLocation: true,
    });

    map.addControl(geolocateControl, 'bottom-right');
  }

  addZoomControl(map) {
    const zoomControl = new MapboxGl.NavigationControl();
    map.addControl(zoomControl, 'bottom-right');
  }

  addCrossingClickHandlers(map) {
    map.on('click', this.onMapClick);
  }

  getMapCenter = () => {
    const { map } = this.state;
    const center = map.getCenter();

    this.props.getMapCenter(center);
  };

  flyTo = point => {
    const { map } = this.state;
    if (map) {
      map.flyTo({
        center: point,
        zoom: 13,
      });
    }
  };

  selectCrossing = crossing => {
    const coordinates = JSON.parse(crossing.geojson).coordinates;

    const mapCrossing = {
      crossingId: crossing.id,
      crossingName: crossing.name,
      crossingStatus: crossing.latestStatusId,
      geojson: crossing.geojson,
    };

    this.setState({
      selectedCrossingCoordinates: coordinates,
      selectedCrossing: mapCrossing,
    });
    this.flyTo(coordinates);
    this.props.selectCrossing(
      crossing.id,
      crossing.latestStatusId,
      crossing.name,
    );
  };

  onCrossingClick = crossing => {
    this.setState({ selectedCrossingId: crossing.properties.crossingId });
    this.setState({ selectedCrossing: crossing.properties });
    this.setState({
      selectedCrossingCoordinates: crossing.geometry.coordinates,
    });
    this.flyTo(crossing.geometry.coordinates);
    this.props.selectCrossing(
      crossing.properties.crossingId,
      crossing.properties.crossingStatus,
      crossing.properties.crossingName,
    );
  };

  onMapClick = e => {
    const { map } = this.state;
    const { showOpen, showClosed, showCaution, showLongterm } = this.props;

    const width = 10;
    const height = 10;
    let layersToQuery = [];
    if (showOpen) layersToQuery.push('openCrossings');
    if (showClosed) layersToQuery.push('closedCrossings');
    if (showCaution) layersToQuery.push('cautionCrossings');
    if (showLongterm) layersToQuery.push('longtermCrossings');

    const features = map.queryRenderedFeatures(
      [
        [e.point.x - width / 2, e.point.y - height / 2],
        [e.point.x + width / 2, e.point.y + height / 2],
      ],
      { layers: layersToQuery },
    );

    // const features = map.queryRenderedFeatures(e.point);

    if (features && features[0] && features[0].properties.crossingId) {
      this.onCrossingClick(features[0]);
    } else {
      this.setState({ selectedCrossingId: -1 });
      this.setState({ selectedCrossing: null });
      this.setState({ selectedCrossingCoordinates: null });
      this.props.selectCrossing(null, null);
    }
  };

  render() {
    const { firstLoadComplete } = this.state;
    if (!firstLoadComplete) return null;

    const {
      showOpen,
      showClosed,
      showCaution,
      showLongterm,
      center,
      openCrossings,
      closedCrossings,
      cautionCrossings,
      longtermCrossings,
    } = this.props;

    return (
      <Map
        onStyleLoad={this.onMapboxStyleLoad}
        style={mapboxstyle}
        containerStyle={{
          height: this.props.mapHeight,
          width: this.props.mapWidth,
          display: 'block',
        }}
        fitBounds={this.props.viewport}
        center={center}
      >
        {showOpen && (
          <Layer
            type="symbol"
            id="openCrossings"
            layout={{ 'icon-image': 'open', 'icon-allow-overlap': true }}
            filter={[
              'all',
              ['!=', 'crossingId', this.state.selectedCrossingId],
            ]}
          >
            {openCrossings &&
              openCrossings.map((crossing, i) => {
                return (
                  <Feature
                    key={i}
                    coordinates={JSON.parse(crossing.geojson).coordinates}
                    properties={{
                      crossingStatus: crossing.latestStatusId,
                      crossingId: crossing.id,
                      geojson: crossing.geojson,
                      latestStatusCreatedAt: crossing.latestStatusCreatedAt,
                      crossingName: crossing.name,
                      communityIds: crossing.communityIds,
                    }}
                  />
                );
              })}
          </Layer>
        )}
        {showLongterm && (
          <Layer
            type="symbol"
            id="longtermCrossings"
            layout={{ 'icon-image': 'longterm', 'icon-allow-overlap': true }}
            filter={[
              'all',
              ['!=', 'crossingId', this.state.selectedCrossingId],
            ]}
          >
            {longtermCrossings &&
              longtermCrossings.map((crossing, i) => {
                return (
                  <Feature
                    key={i}
                    coordinates={JSON.parse(crossing.geojson).coordinates}
                    properties={{
                      crossingStatus: crossing.latestStatusId,
                      crossingId: crossing.id,
                      geojson: crossing.geojson,
                      latestStatusCreatedAt: crossing.latestStatusCreatedAt,
                      crossingName: crossing.name,
                      communityIds: crossing.communityIds,
                    }}
                  />
                );
              })}
          </Layer>
        )}
        {showCaution && (
          <Layer
            type="symbol"
            id="cautionCrossings"
            layout={{ 'icon-image': 'caution', 'icon-allow-overlap': true }}
            filter={[
              'all',
              ['!=', 'crossingId', this.state.selectedCrossingId],
            ]}
          >
            {cautionCrossings &&
              cautionCrossings.map((crossing, i) => {
                return (
                  <Feature
                    key={i}
                    coordinates={JSON.parse(crossing.geojson).coordinates}
                    properties={{
                      crossingStatus: crossing.latestStatusId,
                      crossingId: crossing.id,
                      geojson: crossing.geojson,
                      latestStatusCreatedAt: crossing.latestStatusCreatedAt,
                      crossingName: crossing.name,
                      communityIds: crossing.communityIds,
                    }}
                  />
                );
              })}
          </Layer>
        )}
        {showClosed && (
          <Layer
            type="symbol"
            id="closedCrossings"
            layout={{ 'icon-image': 'closed', 'icon-allow-overlap': true }}
            filter={[
              'all',
              ['!=', 'crossingId', this.state.selectedCrossingId],
            ]}
          >
            {closedCrossings &&
              closedCrossings.map((crossing, i) => {
                return (
                  <Feature
                    key={i}
                    coordinates={JSON.parse(crossing.geojson).coordinates}
                    properties={{
                      crossingStatus: crossing.latestStatusId,
                      crossingId: crossing.id,
                      geojson: crossing.geojson,
                      latestStatusCreatedAt: crossing.latestStatusCreatedAt,
                      crossingName: crossing.name,
                      communityIds: crossing.communityIds,
                    }}
                  />
                );
              })}
          </Layer>
        )}
        <Layer
          type="symbol"
          id="selectedLongtermCrossing"
          layout={{
            'icon-image': 'longterm_selected',
            'icon-allow-overlap': true,
          }}
        >
          {this.state.selectedCrossing &&
          this.state.selectedCrossing.crossingStatus === STATUS_LONGTERM ? (
            <Feature
              key={1}
              coordinates={
                JSON.parse(this.state.selectedCrossing.geojson).coordinates
              }
              properties={{
                crossingStatus: this.state.selectedCrossing.crossingStatus,
                crossingId: this.state.selectedCrossing.crossingId,
                geojson: this.state.selectedCrossing.geojson,
              }}
            />
          ) : null}
        </Layer>
        <Layer
          type="symbol"
          id="selectedCautionCrossing"
          layout={{
            'icon-image': 'caution_selected',
            'icon-allow-overlap': true,
          }}
        >
          {this.state.selectedCrossing &&
          this.state.selectedCrossing.crossingStatus === STATUS_CAUTION ? (
            <Feature
              key={1}
              coordinates={
                JSON.parse(this.state.selectedCrossing.geojson).coordinates
              }
              properties={{
                crossingStatus: this.state.selectedCrossing.crossingStatus,
                crossingId: this.state.selectedCrossing.crossingId,
                geojson: this.state.selectedCrossing.geojson,
              }}
            />
          ) : null}
        </Layer>
        <Layer
          type="symbol"
          id="selectedClosedCrossing"
          layout={{
            'icon-image': 'closed_selected',
            'icon-allow-overlap': true,
          }}
        >
          {this.state.selectedCrossing &&
          this.state.selectedCrossing.crossingStatus === STATUS_CLOSED ? (
            <Feature
              key={1}
              coordinates={
                JSON.parse(this.state.selectedCrossing.geojson).coordinates
              }
              properties={{
                crossingStatus: this.state.selectedCrossing.crossingStatus,
                crossingId: this.state.selectedCrossing.crossingId,
                geojson: this.state.selectedCrossing.geojson,
              }}
            />
          ) : null}
        </Layer>
        <Layer
          type="symbol"
          id="selectedOpenCrossing"
          layout={{
            'icon-image': 'open_selected',
            'icon-allow-overlap': true,
          }}
        >
          {this.state.selectedCrossing &&
          this.state.selectedCrossing.crossingStatus === STATUS_OPEN ? (
            <Feature
              key={1}
              coordinates={
                JSON.parse(this.state.selectedCrossing.geojson).coordinates
              }
              properties={{
                crossingStatus: this.state.selectedCrossing.crossingStatus,
                crossingId: this.state.selectedCrossing.crossingId,
                geojson: this.state.selectedCrossing.geojson,
              }}
            />
          ) : null}
        </Layer>
      </Map>
    );
  }
}

export default CrossingMap;
