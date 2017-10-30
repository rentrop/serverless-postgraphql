import React, { Component } from 'react';
import CrossingMap from '../../Map/CrossingMap'; 
import './CrossingMapPage.css';

class CrossingMapPage extends Component {

  render() {
    const envelope = JSON.parse(this.props.currentUser.communityByCommunityId.viewportgeojson);
    const viewport = [
      [Math.min(...envelope.coordinates[0].map(arr => arr[0])), Math.min(...envelope.coordinates[0].map(arr => arr[1]))],
      [Math.max(...envelope.coordinates[0].map(arr => arr[0])), Math.max(...envelope.coordinates[0].map(arr => arr[1]))]
    ];

    return (
      <div className="CrossingMapPage">
        <div className="CrossingMapPage__map-container">
          <CrossingMap mapHeight="80vh" mapWidth="100%" viewport={viewport}/>
        </div>
      </div>
    );
  }
}

export default CrossingMapPage;
