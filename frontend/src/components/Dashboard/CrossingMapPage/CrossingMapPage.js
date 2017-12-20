import React, { Component } from 'react';
import CrossingMap from 'components/Map/CrossingMap';
import CrossingMapSidebar from 'components/Dashboard/CrossingMapPage/CrossingMapSidebar';
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
      viewport: viewport
    };
  }

  toggleSidebar = () => {
    this.setState({showSidebar: !this.state.showSidebar});
  }

  render() {
    const { showSidebar, viewport } = this.state;

    return (
      <div>
        <div onClick={this.toggleSidebar}> toggle sidebar </div>
        <div className="CrossingMapPage">
          {showSidebar ? <CrossingMapSidebar/> : null}
          <div className="CrossingMapPage__map-container">
            <CrossingMap mapHeight="80vh" mapWidth="100%" viewport={viewport} sidebarVisible={showSidebar}/>
          </div>
        </div>
      </div>
    );
  }
}

export default CrossingMapPage;


