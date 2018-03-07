import React, { Component } from 'react';
import CrossingMap from 'components/Shared/Map/CrossingMap';
import CrossingMapSidebar from 'components/Shared/CrossingMapPage/CrossingMapSidebar';
import CrossingMapSearchBar from 'components/Shared/CrossingMapPage/CrossingMapSearchBar';
import SelectedCrossingContainer from 'components/Shared/CrossingMapPage/SelectedCrossingContainer';
import 'components/Shared/CrossingMapPage/CrossingMapPage.css';
import Fullscreen from 'react-full-screen';
import FontAwesome from 'react-fontawesome';
import { LARGE_ITEM_MIN_WIDTH } from 'constants/containerQueryConstants';
import { ContainerQuery } from 'react-container-query';
import { graphql, compose } from 'react-apollo';
import gql from 'graphql-tag';
import classnames from 'classnames';
import allCrossings from 'components/Shared/Map/queries/allCrossingsQuery';

const containerQuery = {
  fullsize: {
    minWidth: LARGE_ITEM_MIN_WIDTH,
  },
};

class CrossingMapPage extends Component {
  constructor(props) {
    super(props);

    // If we have a current user, we're on the dashboard, we should get their viewport
    const viewportgeojson = this.props.currentUser
      ? this.props.currentUser.communityByCommunityId.viewportgeojson
      : `{"type":"Polygon","coordinates":[[[-98.086914,30.148464],[-98.086914,30.433285],[-97.615974,30.433285],[-97.615974,30.148464],[-98.086914,30.148464]]]}`;

    const viewportAndCenter = this.getViewportAndCenter(viewportgeojson);

    this.state = {
      selectedCrossingId: null,
      selectedCrossingStatus: null,
      fullscreen: false,
      searchQuery: '',
      formattedSearchQuery: '%%',
      showOpen: true,
      showClosed: true,
      showCaution: true,
      showLongterm: true,
      selectedLocationCoordinates: null,
      selectedCommunity: null,
      viewport: viewportAndCenter.viewport,
      center: viewportAndCenter.center,
      mapCenter: viewportAndCenter.center,
    };
  }

  getViewportAndCenter = viewportgeojson => {
    const envelope = JSON.parse(viewportgeojson);

    const viewport = [
      [
        Math.min(...envelope.coordinates[0].map(arr => arr[0])) - 0.1,
        Math.min(...envelope.coordinates[0].map(arr => arr[1])) - 0.1,
      ],
      [
        Math.max(...envelope.coordinates[0].map(arr => arr[0])) + 0.1,
        Math.max(...envelope.coordinates[0].map(arr => arr[1])) + 0.1,
      ],
    ];

    const center = {
      lng: (viewport[0][0] + viewport[1][0]) / 2,
      lat: (viewport[0][1] + viewport[1][1]) / 2,
    };

    return {
      viewport: viewport,
      center: center,
    };
  };

  selectCrossing = (crossingId, crossingStatus, crossingName) => {
    this.setState({
      selectedCrossingId: crossingId,
      selectedCrossingStatus: crossingStatus,
      selectedCrossingName: crossingName,
    });
  };

  toggleFull = () => {
    this.setState({ fullscreen: !this.state.fullscreen });
  };

  toggleShowOpen = () => {
    this.setState({ showOpen: !this.state.showOpen });
  };
  toggleShowClosed = () => {
    this.setState({ showClosed: !this.state.showClosed });
  };
  toggleShowCaution = () => {
    this.setState({ showCaution: !this.state.showCaution });
  };
  toggleShowLongterm = () => {
    this.setState({ showLongterm: !this.state.showLongterm });
  };

  getMapCenter = center => {
    this.setState({ mapCenter: center });
  };

  setSelectedLocationCoordinates = coordinates => {
    this.setState({ selectedLocationCoordinates: coordinates });
  };

  setSelectedCommunity = community => {
    this.setState({ selectedCommunity: community });
    if (community && community.viewportgeojson) {
      const viewportAndCenter = this.getViewportAndCenter(
        community.viewportgeojson,
      );
      this.setState({
        viewport: viewportAndCenter.viewport,
        center: viewportAndCenter.center,
        mapCenter: viewportAndCenter.mapCenter,
      });
    }
  };

  render() {
    const {
      viewport,
      mapCenter,
      selectedCrossingId,
      selectedCrossingStatus,
      searchQuery,
      formattedSearchQuery,
      selectedCrossingName,
      selectedLocationCoordinates,
      selectedCommunity,
    } = this.state;
    const { currentUser } = this.props;

    const isLoading =
      !this.props.openCrossings ||
      this.props.openCrossings.loading ||
      !this.props.closedCrossings ||
      this.props.closedCrossings.loading ||
      !this.props.cautionCrossings ||
      this.props.cautionCrossings.loading ||
      !this.props.longtermCrossings ||
      this.props.longtermCrossings.loading ||
      !this.props.allCommunities ||
      this.props.allCommunities.loading;

    if (
      !isLoading &&
      (this.props.openCrossings.searchCrossings == null ||
        this.props.closedCrossings.searchCrossings == null ||
        this.props.cautionCrossings.searchCrossings == null ||
        this.props.longtermCrossings.searchCrossings == null)
    ) {
      // TODO: add error logging
      return <div>Error Loading</div>;
    }

    const allCommunities = !isLoading
      ? this.props.allCommunities.allCommunities.nodes
      : null;
    const openCrossings = !isLoading
      ? this.props.openCrossings.searchCrossings.nodes
      : null;
    const closedCrossings = !isLoading
      ? this.props.closedCrossings.searchCrossings.nodes
      : null;
    const cautionCrossings = !isLoading
      ? this.props.cautionCrossings.searchCrossings.nodes
      : null;
    const longtermCrossings = !isLoading
      ? this.props.longtermCrossings.searchCrossings.nodes
      : null;

    return (
      <ContainerQuery query={containerQuery}>
        {params => (
          <div className="CrossingMapPage__page-container">
            <Fullscreen
              enabled={this.state.fullscreen}
              onChange={fullscreen => this.setState({ fullscreen })}
            >
              <div className="CrossingMapPage">
                {!params.fullsize && (
                  <CrossingMapSearchBar
                    selectedCrossingId={selectedCrossingId}
                    selectCrossing={this.selectCrossing}
                    searchQuery={searchQuery}
                    searchQueryUpdated={this.searchQueryUpdated}
                    selectedCrossingName={selectedCrossingName}
                    setSelectedCommunity={this.setSelectedCommunity}
                    toggleSearchFocus={() => null}
                    communities={allCommunities}
                    center={mapCenter}
                    setSelectedLocationCoordinates={
                      this.setSelectedLocationCoordinates
                    }
                  />
                )}
                {params.fullsize && (
                  <div className="CrossingMapPage__fullscreen-toggle-container">
                    <FontAwesome
                      name="arrows-alt"
                      size="2x"
                      onClick={this.toggleFull}
                      className="CrossingMapPage__fullscreen-toggle"
                    />
                  </div>
                )}
                {params.fullsize && (
                  <CrossingMapSidebar
                    selectedCrossingId={selectedCrossingId}
                    selectedCrossingName={selectedCrossingName}
                    currentUser={currentUser}
                    selectCrossing={this.selectCrossing}
                    searchQuery={searchQuery}
                    searchQueryUpdated={this.searchQueryUpdated}
                    showOpen={this.state.showOpen}
                    toggleShowOpen={this.toggleShowOpen}
                    showClosed={this.state.showClosed}
                    toggleShowClosed={this.toggleShowClosed}
                    showCaution={this.state.showCaution}
                    toggleShowCaution={this.toggleShowCaution}
                    showLongterm={this.state.showLongterm}
                    toggleShowLongterm={this.toggleShowLongterm}
                    allCommunities={allCommunities}
                    openCrossings={openCrossings}
                    closedCrossings={closedCrossings}
                    longtermCrossings={longtermCrossings}
                    cautionCrossings={cautionCrossings}
                    center={mapCenter}
                    setSelectedLocationCoordinates={
                      this.setSelectedLocationCoordinates
                    }
                    setSelectedCommunity={this.setSelectedCommunity}
                  />
                )}
                <div
                  className={classnames('CrossingMapPage__map-container', {
                    'CrossingMapPage__map-container--hidden':
                      !params.fullsize && selectedCrossingId,
                  })}
                >
                  <CrossingMap
                    mapHeight="100%"
                    mapWidth="100%"
                    viewport={viewport}
                    getMapCenter={this.getMapCenter}
                    selectedLocationCoordinates={selectedLocationCoordinates}
                    selectedCrossingId={selectedCrossingId}
                    selectedCrossingStatus={selectedCrossingStatus}
                    selectCrossing={this.selectCrossing}
                    currentUser={currentUser}
                    searchQuery={formattedSearchQuery}
                    showOpen={this.state.showOpen}
                    showClosed={this.state.showClosed}
                    showCaution={this.state.showCaution}
                    showLongterm={this.state.showLongterm}
                    openCrossings={openCrossings}
                    closedCrossings={closedCrossings}
                    longtermCrossings={longtermCrossings}
                    cautionCrossings={cautionCrossings}
                    selectedCommunityId={
                      selectedCommunity && selectedCommunity.id
                    }
                  />
                </div>
                {!params.fullsize &&
                  selectedCrossingId && (
                    <div className="CrossingMapPage__mobile-overlay">
                      <SelectedCrossingContainer
                        crossingId={selectedCrossingId}
                        currentUser={currentUser}
                        selectCrossing={this.selectCrossing}
                      />
                    </div>
                  )}
              </div>
            </Fullscreen>
          </div>
        )}
      </ContainerQuery>
    );
  }
}

const allCommunities = gql`
  {
    allCommunities {
      nodes {
        id
        name
        viewportgeojson
      }
    }
  }
`;

export default compose(
  graphql(allCrossings, {
    name: 'openCrossings',
    options: ownProps => ({
      variables: {
        search: '%',
        showOpen: true,
        showClosed: false,
        showCaution: false,
        showLongterm: false,
        communityId:
          ownProps.currentUser &&
          ownProps.currentUser.role !== 'floods_super_admin'
            ? ownProps.currentUser.communityId
            : ownProps.selectedCommunityId,
      },
    }),
  }),
  graphql(allCrossings, {
    name: 'closedCrossings',
    options: ownProps => ({
      variables: {
        search: '%',
        showOpen: false,
        showClosed: true,
        showCaution: false,
        showLongterm: false,
        communityId:
          ownProps.currentUser &&
          ownProps.currentUser.role !== 'floods_super_admin'
            ? ownProps.currentUser.communityId
            : ownProps.selectedCommunityId,
      },
    }),
  }),
  graphql(allCrossings, {
    name: 'cautionCrossings',
    options: ownProps => ({
      variables: {
        search: '%',
        showOpen: false,
        showClosed: false,
        showCaution: true,
        showLongterm: false,
        communityId:
          ownProps.currentUser &&
          ownProps.currentUser.role !== 'floods_super_admin'
            ? ownProps.currentUser.communityId
            : ownProps.selectedCommunityId,
      },
    }),
  }),
  graphql(allCrossings, {
    name: 'longtermCrossings',
    options: ownProps => ({
      variables: {
        search: '%',
        showOpen: false,
        showClosed: false,
        showCaution: false,
        showLongterm: true,
        communityId:
          ownProps.currentUser &&
          ownProps.currentUser.role !== 'floods_super_admin'
            ? ownProps.currentUser.communityId
            : ownProps.selectedCommunityId,
      },
    }),
  }),
  graphql(allCommunities, {
    name: 'allCommunities',
  }),
)(CrossingMapPage);
