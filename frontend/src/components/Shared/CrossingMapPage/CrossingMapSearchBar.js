import React, { Component } from 'react';
import 'components/Shared/CrossingMapPage/CrossingMapSearchBar.css';
import FontAwesome from 'react-fontawesome';

class CrossingMapSearchBar extends Component {
  clearSearch = () => {
    this.props.searchQueryUpdated({ target: { value: '' } });
    this.props.selectCrossing(null, null);
  };

  render() {
    const {
      searchQuery,
      selectedCrossingId,
      searchQueryUpdated,
      selectedCrossingName,
    } = this.props;

    return (
      <div>
        <div className="CrossingMapSearchBar__header">
          SEARCH FOR A PLACE, AREA, OR CROSSING
        </div>
        <div className="CrossingMapSearchBar__container">
          <div className="CrossingMapSearchBar__location-icon">
            <FontAwesome name="map-marker" size="2x" />
          </div>
          {selectedCrossingId && (
            <div className="CrossingMapSearchBar__selected-item">
              {selectedCrossingName}
            </div>
          )}
          {!selectedCrossingId && (
            <div className="CrossingMapSearchBar__text-entry">
              <input
                type="text"
                placeholder="Search..."
                value={searchQuery}
                onChange={searchQueryUpdated}
              />
            </div>
          )}
          {!selectedCrossingId && (
            <div className="CrossingMapSearchBar__glass-icon">
              <FontAwesome name="search" size="2x" />
            </div>
          )}
          <div
            className="CrossingMapSearchBar__cancel-icon"
            onClick={this.clearSearch}
          >
            <FontAwesome name="times" size="2x" />
          </div>
        </div>
      </div>
    );
  }
}

export default CrossingMapSearchBar;
