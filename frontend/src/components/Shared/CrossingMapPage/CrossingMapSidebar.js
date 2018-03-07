import React, { Component } from 'react';
import SelectedCrossingContainer from 'components/Shared/CrossingMapPage/SelectedCrossingContainer';
import CrossingMapSearchBar from 'components/Shared/CrossingMapPage/CrossingMapSearchBar';
import CrossingSidebarNearbyCrossingItem from 'components/Shared/CrossingMapPage/CrossingSidebarNearbyCrossingItem';
import InfiniteCrossingStatusHistoryPaginationContainer from 'components/Dashboard/CrossingStatusHistory/InfiniteCrossingStatusHistoryPaginationContainer';
import 'components/Shared/CrossingMapPage/CrossingMapSidebar.css';
import FontAwesome from 'react-fontawesome';
import classnames from 'classnames';
import geolib from 'geolib';
import _ from 'lodash';

const FilterCheckbox = ({ defaultChecked, onClick, title }) => (
  <label className="CrossingMapPage_sidebar-filter">
    <input
      className="CrossingMapPage_sidebar-filter-checkbox"
      type="checkbox"
      defaultChecked={defaultChecked}
      onClick={onClick}
    />
    {title}
  </label>
);

class CrossingMapSidebar extends Component {
  constructor(props) {
    super(props);

    this.state = {
      visible: true,
      showFilters: false,
      searchFocused: false,
      showNearby: true,
      showHistory: false,
      nearbyCrossings: [],
    };
  }

  componentWillReceiveProps(nextProps) {
    // If we're unselecting a crossing, stop trying to show the history
    if (this.props.selectedCrossingId && !nextProps.selectedCrossingId) {
      this.setState({
        showNearby: true,
        showHistory: false,
      });
    }

    // If we have a new map center, different crossings, or different visibility, update nearby crossings
    if (
      this.props.center !== nextProps.center ||
      this.props.showOpen !== nextProps.showOpen ||
      this.props.showClosed !== nextProps.showClosed ||
      this.props.showCaution !== nextProps.showCaution ||
      this.props.showClosed !== nextProps.showClosed ||
      this.props.openCrossings !== nextProps.openCrossings ||
      this.props.closedCrossings !== nextProps.closedCrossings ||
      this.props.cautionCrossings !== nextProps.cautionCrossings ||
      this.props.longtermCrossings !== nextProps.longtermCrossings
    ) {
      const nearbyCrossings = this.getNearbyCrossings(
        nextProps.center,
        nextProps.openCrossings,
        nextProps.closedCrossings,
        nextProps.cautionCrossings,
        nextProps.longtermCrossings,
        nextProps.showOpen,
        nextProps.showClosed,
        nextProps.showCaution,
        nextProps.showLongterm,
      );
      this.setState({ nearbyCrossings: nearbyCrossings });
    }
  }

  toggleSidebar = () => {
    this.setState({ visible: !this.state.visible });
  };

  toggleFilters = () => {
    this.setState({ showFilters: !this.state.showFilters });
  };

  toggleSearchFocus = focused => {
    this.setState({ searchFocused: focused });
  };

  toggleNearbyHistory = tab => {
    if (tab === 'nearby') {
      this.setState({
        showNearby: true,
        showHistory: false,
      });
    }

    if (tab === 'history') {
      this.setState({
        showNearby: false,
        showHistory: true,
      });
    }
  };

  getNearbyCrossings = (
    center,
    openCrossings,
    closedCrossings,
    cautionCrossings,
    longtermCrossings,
    showOpen,
    showClosed,
    showCaution,
    showLongterm,
  ) => {
    let nearbyCrossings = [];

    if (showOpen && openCrossings) nearbyCrossings.push(...openCrossings);
    if (showClosed && closedCrossings) nearbyCrossings.push(...closedCrossings);
    if (showCaution && cautionCrossings)
      nearbyCrossings.push(...cautionCrossings);
    if (showLongterm && longtermCrossings)
      nearbyCrossings.push(...longtermCrossings);

    return nearbyCrossings.length
      ? _.sortBy(nearbyCrossings, c =>
          geolib.getDistance(center, JSON.parse(c.geojson).coordinates),
        ).slice(0, 20)
      : [];
  };

  render() {
    const { visible, searchFocused, showNearby, showHistory } = this.state;
    const {
      toggleShowOpen,
      toggleShowClosed,
      toggleShowCaution,
      toggleShowLongterm,
      showOpen,
      showClosed,
      showCaution,
      showLongterm,
      searchQuery,
      searchQueryUpdated,
      selectedCrossingId,
      selectCrossing,
      currentUser,
      allCommunities,
      selectedCrossingName,
      center,
      setSelectedLocationCoordinates,
      setSelectedCommunity,
    } = this.props;

    const { nearbyCrossings } = this.state;

    return (
      <div className="CrossingMapSidebar__overlay-container">
        {visible && (
          <div className="CrossingMapSidebar__content">
            <CrossingMapSearchBar
              selectedCrossingId={selectedCrossingId}
              selectCrossing={selectCrossing}
              searchQuery={searchQuery}
              searchQueryUpdated={searchQueryUpdated}
              selectedCrossingName={selectedCrossingName}
              center={center}
              setSelectedLocationCoordinates={setSelectedLocationCoordinates}
              toggleSearchFocus={this.toggleSearchFocus}
              communities={allCommunities}
              communityId={currentUser && currentUser.communityId}
              setSelectedCommunity={setSelectedCommunity}
            />

            {!searchFocused && (
              <div>
                {selectedCrossingId && (
                  <SelectedCrossingContainer
                    crossingId={selectedCrossingId}
                    currentUser={currentUser}
                    selectCrossing={selectCrossing}
                  />
                )}
                {!selectedCrossingId && (
                  <div>
                    <div className="CrossingMapPage_sidebar-filter-sort-toggle-container">
                      <div
                        className={classnames(
                          'CrossingMapPage_sidebar-filter-toggle',
                          {
                            selected: this.state.showFilters,
                          },
                        )}
                        onClick={this.toggleFilters}
                      >
                        <div className="CrossingMapPage_sidebar-filter-toggle-text">
                          {this.state.showFilters ? (
                            <FontAwesome name="minus" ariaLabel="Hide" />
                          ) : (
                            <FontAwesome name="plus" ariaLabel="Show" />
                          )}{' '}
                          FILTER
                        </div>
                      </div>
                    </div>
                    {this.state.showFilters && (
                      <div className="CrossingMapPage_sidebar-filter-container">
                        <FilterCheckbox
                          title="Open"
                          defaultChecked={showOpen}
                          onClick={toggleShowOpen}
                        />
                        <FilterCheckbox
                          title="Closed"
                          defaultChecked={showClosed}
                          onClick={toggleShowClosed}
                        />
                        <FilterCheckbox
                          title="Caution"
                          defaultChecked={showCaution}
                          onClick={toggleShowCaution}
                        />
                        <FilterCheckbox
                          title="Long Term Closure"
                          defaultChecked={showLongterm}
                          onClick={toggleShowLongterm}
                        />
                      </div>
                    )}
                  </div>
                )}
                {selectedCrossingId && (
                  <div className="CrossingMapPage_sidebar-nearby-history-toggle">
                    <div
                      className={classnames(
                        'CrossingMapPage_sidebar-nearby-tab',
                        {
                          selected: this.state.showNearby,
                        },
                      )}
                      onClick={() => this.toggleNearbyHistory('nearby')}
                    >
                      <FontAwesome name="map-marker" /> Nearby
                    </div>
                    <div
                      className={classnames(
                        'CrossingMapPage_sidebar-history-tab',
                        {
                          selected: this.state.showHistory,
                        },
                      )}
                      onClick={() => this.toggleNearbyHistory('history')}
                    >
                      <FontAwesome name="history" /> History
                    </div>
                  </div>
                )}
                {showNearby && (
                  <div className="CrossingMapPage_sidebar-nearbycrossings">
                    {nearbyCrossings.map(c => (
                      <CrossingSidebarNearbyCrossingItem
                        key={c.id}
                        latestStatus={c.latestStatusCreatedAt}
                        statusId={c.latestStatusId}
                        crossingId={c.id}
                        crossingName={c.name}
                        communityIds={c.communityIds}
                        allCommunities={allCommunities}
                        selectCrossing={selectCrossing}
                      />
                    ))}
                  </div>
                )}
                {showHistory && (
                  <div className="CrossingMapPage_sidebar-crossing-status-history">
                    <InfiniteCrossingStatusHistoryPaginationContainer
                      crossingId={selectedCrossingId}
                      showNames={false}
                    />
                  </div>
                )}
              </div>
            )}
          </div>
        )}
        <div
          className="CrossingMapPage_sidebar-toggle"
          onClick={this.toggleSidebar}
        >
          {visible ? (
            <FontAwesome
              name="angle-left"
              size="2x"
              onClick={this.toggleSidebar}
            />
          ) : (
            <FontAwesome
              name="angle-right"
              size="2x"
              onClick={this.toggleSidebar}
            />
          )}
        </div>
      </div>
    );
  }
}

export default CrossingMapSidebar;
