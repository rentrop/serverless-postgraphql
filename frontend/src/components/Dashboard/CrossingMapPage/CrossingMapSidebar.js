import React, { Component } from 'react';
import CrossingMap from 'components/Map/CrossingMap'; 
import 'components/Dashboard/CrossingMapPage/CrossingMapPage.css';

class CrossingMapSidebar extends Component {

  render() {
    const { crossingId, hideSidebar } = this.props;

    return (
      <div className="CrossingMapSidebar">
        <div onClick={() => hideSidebar(true)}> hide sidebar </div>
        <div> BLARG {crossingId} </div>
      </div>
    );
  }
}

export default CrossingMapSidebar;
