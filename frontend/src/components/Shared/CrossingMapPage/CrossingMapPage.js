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
import { graphql } from 'react-apollo';
import gql from 'graphql-tag';
import classnames from 'classnames';

const containerQuery = {
  fullsize: {
    minWidth: LARGE_ITEM_MIN_WIDTH,
  },
};

class CrossingMapPage extends Component {
  constructor(props) {
    super(props);

    // If we have a current user, we're on the dashboard, we should get their viewport
    const envelope = this.props.currentUser
      ? JSON.parse(
          this.props.currentUser.communityByCommunityId.viewportgeojson,
        )
      : JSON.parse(
          `{"type":"Polygon","coordinates":[[[-98.086914,30.148464],[-98.086914,30.433285],[-97.615974,30.433285],[-97.615974,30.148464],[-98.086914,30.148464]]]}`,
        );

    // I actually like doing the padding here because it keeps the data/view separation
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

    this.state = {
      viewport: viewport,
      selectedCrossingId: null,
      selectedCrossingStatus: null,
      fullscreen: false,
      searchQuery: '',
      formattedSearchQuery: '%%',
      showOpen: true,
      showClosed: true,
      showCaution: true,
      showLongterm: true,
      visibleCrossings: [],
    };
  }

  formatSearchQuery(query) {
    return `%${query.replace(/ /g, '%')}%`;
  }

  searchQueryUpdated = e => {
    this.setState({ searchQuery: e.target.value });
    this.setState({
      formattedSearchQuery: this.formatSearchQuery(e.target.value),
    });
  };

  selectCrossing = (crossingId, crossingStatus, crossingName) => {
    this.setState({
      selectedCrossingId: crossingId,
      selectedCrossingStatus: crossingStatus,
      selectedCrossingName: crossingName,
    });
  };

  setVisibleCrossings = visibleCrossings => {
    this.setState({ visibleCrossings: visibleCrossings });
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

  render() {
    const {
      viewport,
      selectedCrossingId,
      selectedCrossingStatus,
      searchQuery,
      formattedSearchQuery,
      visibleCrossings,
      selectedCrossingName,
    } = this.state;
    const { currentUser } = this.props;
    const allCommunities =
      this.props.data &&
      !this.props.data.loading &&
      this.props.data.allCommunities
        ? this.props.data.allCommunities.nodes
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
                    visibleCrossings={visibleCrossings}
                    allCommunities={allCommunities}
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
                    selectedCrossingId={selectedCrossingId}
                    selectedCrossingStatus={selectedCrossingStatus}
                    selectCrossing={this.selectCrossing}
                    currentUser={currentUser}
                    searchQuery={formattedSearchQuery}
                    showOpen={this.state.showOpen}
                    showClosed={this.state.showClosed}
                    showCaution={this.state.showCaution}
                    showLongterm={this.state.showLongterm}
                    setVisibleCrossings={this.setVisibleCrossings}
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
      }
    }
  }
`;

export default graphql(allCommunities)(CrossingMapPage);
