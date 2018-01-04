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
      keepSidebarHidden: false,
      viewport: viewport,
      selectedCrossingId: null
    };
  }

  hideSidebar = (keepHidden) => {
    this.setState({
      showSidebar: false,
      keepSidebarHidden: keepHidden
    })
  }

  showSidebar = (forceShow) => {
    const keepHidden = (!forceShow && this.state.keepSidebarHidden);

    this.setState({
      showSidebar: (!keepHidden),
      keepSidebarHidden: keepHidden
    })
  }

  selectCrossing = (crossingId) => {
    if (crossingId) this.showSidebar();
    this.setState({selectedCrossingId: crossingId});
  }

  render() {
    const { showSidebar, keepSidebarHidden, viewport, selectedCrossingId } = this.state;
    const { currentUser } = this.props;

    return (
      <div>
        {keepSidebarHidden ? <div onClick={() => this.showSidebar(true)}>Show Sidebar</div> : null}
        <div className="CrossingMapPage">
          {showSidebar ? <CrossingMapSidebar crossingId={selectedCrossingId} hideSidebar={this.hideSidebar} currentUser={currentUser}/> : null}
          <div className="CrossingMapPage__map-container">
            <CrossingMap mapHeight="80vh" mapWidth="100%" viewport={viewport} sidebarVisible={showSidebar} selectCrossing={this.selectCrossing}/>
          </div>
        </div>
      </div>
    );
  }
}

export default CrossingMapPage;


