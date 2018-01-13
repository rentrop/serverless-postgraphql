import React, { Component } from 'react';
import CrossingMap from 'components/Map/CrossingMap';
import CrossingMapOverlay from 'components/Dashboard/CrossingMapPage/CrossingMapOverlay';
import 'components/Dashboard/CrossingMapPage/CrossingMapPage.css';

class CrossingMapPage extends Component {
  constructor(props) {
    super(props);

    const envelope = JSON.parse(this.props.currentUser.communityByCommunityId.viewportgeojson);
    const viewport = [
      [Math.min(...envelope.coordinates[0].map(arr => arr[0])), Math.min(...envelope.coordinates[0].map(arr => arr[1]))],
      [Math.max(...envelope.coordinates[0].map(arr => arr[0])), Math.max(...envelope.coordinates[0].map(arr => arr[1]))]
    ];

    this.state = {
      showSidebar: false,
      keepSidebarHidden: false,
      viewport: viewport,
      selectedCrossingId: null,
      selectedCrossingStatus: null
    };
  }

  selectCrossing = (crossingId, crossingStatus) => {
    this.setState({selectedCrossingId: crossingId});
    this.setState({selectedCrossingStatus: crossingStatus});
  }

  render() {
    const { viewport, selectedCrossingId, selectedCrossingStatus } = this.state;
    const { currentUser } = this.props;

    return (
      <div>
        <div className="CrossingMapPage">
          {selectedCrossingId ? <CrossingMapOverlay crossingId={selectedCrossingId} currentUser={currentUser} selectCrossing={this.selectCrossing}/> : null}
          <div className="CrossingMapPage__map-container">
            <CrossingMap 
              mapHeight="80vh"
              mapWidth="100%"
              viewport={viewport}
              selectedCrossingId={selectedCrossingId}
              selectedCrossingStatus={selectedCrossingStatus}
              selectCrossing={this.selectCrossing} />
          </div>
        </div>
      </div>
    );
  }
}

export default CrossingMapPage;


