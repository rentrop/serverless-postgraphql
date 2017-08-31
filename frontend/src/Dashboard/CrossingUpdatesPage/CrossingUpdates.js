import React, { Component } from 'react';
import CrossingMap from '../../Map/CrossingMap'; 
import './CrossingUpdates.css';

class CrossingUpdates extends Component {
  state = {
    activeTab: 'list'
  }

  changeTab(tab) {
    this.setState({activeTab: tab});
  }

  getTabClass(tab) {
    const baseClassName = "CrossingUpdates__tab--";
    const classModifier = this.state.activeTab === tab ? 'active' : 'inactive';

    return baseClassName + classModifier;
  }

  render() {
    return (
      <div className="CrossingUpdates">
        <div className="flexcontainer">
          <div className="CrossingUpdates__tab--header">SHOW: </div>
          <div className={this.getTabClass('list')} onClick={this.changeTab.bind(this,'list')}>LIST</div>
          <div className="CrossingUpdates__tab--header"> | </div>
          <div className={this.getTabClass('map')} onClick={this.changeTab.bind(this,'map')}>MAP</div>
        </div>
        {this.state.activeTab === 'map' ? 
          <div className="CrossingUpdates__map-container">
            <CrossingMap mapHeight="80vh" mapWidth="80vw"/>
          </div>
        :
          <div>LIST VIEW</div>
        }
      </div>
    );
  }
}

export default CrossingUpdates;
