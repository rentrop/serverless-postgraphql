import React, { Component } from 'react';
import SelectedCrossingContainer from 'components/Shared/CrossingMapPage/SelectedCrossingContainer';
import CrossingMapSearchBar from 'components/Shared/CrossingMapPage/CrossingMapSearchBar';
import CrossingSidebarNearbyCrossingItem from 'components/Shared/CrossingMapPage/CrossingSidebarNearbyCrossingItem';
import 'components/Shared/CrossingMapPage/CrossingMapSidebar.css';
import FontAwesome from 'react-fontawesome';
import classnames from 'classnames';

class CrossingMapSidebar extends Component {
  constructor(props) {
    super(props);

    this.state = {
      visible: true,
      showFilters: false,
      searchFocused: true,
    };
  }

  toggleSidebar = () => {
    this.setState({ visible: !this.state.visible });
  };

  toggleFilters = () => {
    this.setState({ showFilters: !this.state.showFilters });
  };

  toggleSearchFocus = focused => {
    console.log(focused);
    this.setState({ searchFocused: focused });
  }

  render() {
    const { visible, searchFocused } = this.state;
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
      visibleCrossings,
      allCommunities,
      selectedCrossingName,
      center,
      setSelectedLocationCoordinates,
    } = this.props;

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
            />

            {searchFocused ? (
              "BLARG"
            ) : (
              <div>
              {selectedCrossingId && (
                <SelectedCrossingContainer
                  crossingId={selectedCrossingId}
                  currentUser={currentUser}
                  selectCrossing={selectCrossing}
                />
              )}
              <div className="CrossingMapPage_sidebar-filter-sort-toggle-container">
                <div
                  className={classnames('CrossingMapPage_sidebar-filter-toggle', {
                    selected: this.state.showFilters,
                  })}
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
                  <label className="CrossingMapPage_sidebar-filter">
                    <input
                      className="CrossingMapPage_sidebar-filter-checkbox"
                      type="checkbox"
                      defaultChecked={showOpen}
                      onClick={toggleShowOpen}
                    />
                    Open
                  </label>
                  <label className="CrossingMapPage_sidebar-filter">
                    <input
                      className="CrossingMapPage_sidebar-filter-checkbox"
                      type="checkbox"
                      defaultChecked={showCaution}
                      onClick={toggleShowCaution}
                    />
                    Caution
                  </label>
                  <label className="CrossingMapPage_sidebar-filter">
                    <input
                      className="CrossingMapPage_sidebar-filter-checkbox"
                      type="checkbox"
                      defaultChecked={showClosed}
                      onClick={toggleShowClosed}
                    />
                    Closed
                  </label>
                  <label className="CrossingMapPage_sidebar-filter">
                    <input
                      className="CrossingMapPage_sidebar-filter-checkbox"
                      type="checkbox"
                      defaultChecked={showLongterm}
                      onClick={toggleShowLongterm}
                    />
                    Long Term Closure
                  </label>
                </div>
              )}
              <div className="CrossingMapPage_sidebar-nearbycrossings">
                {visibleCrossings.map(c => (
                  <CrossingSidebarNearbyCrossingItem
                    key={c.id}
                    latestStatus={c.latestStatus}
                    statusId={c.statusId}
                    crossingName={c.crossingName}
                    communityIds={c.communityIds}
                    allCommunities={allCommunities}
                  />
                ))}
              </div>
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
