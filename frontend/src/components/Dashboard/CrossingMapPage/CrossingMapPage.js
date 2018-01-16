import React, { Component } from 'react';
import CrossingMap from 'components/Map/CrossingMap';
import CrossingMapOverlay from 'components/Dashboard/CrossingMapPage/CrossingMapOverlay';
import 'components/Dashboard/CrossingMapPage/CrossingMapPage.css';
import Fullscreen from 'react-full-screen';
import FontAwesome from 'react-fontawesome';

class CrossingMapPage extends Component {
  constructor(props) {
    super(props);

    const envelope = JSON.parse(this.props.currentUser.communityByCommunityId.viewportgeojson);
    const viewport = [
      [Math.min(...envelope.coordinates[0].map(arr => arr[0])), Math.min(...envelope.coordinates[0].map(arr => arr[1]))],
      [Math.max(...envelope.coordinates[0].map(arr => arr[0])), Math.max(...envelope.coordinates[0].map(arr => arr[1]))]
    ];

    this.state = {
      viewport: viewport,
      selectedCrossingId: null,
      selectedCrossingStatus: null,
      fullscreen: false
    };
  }

  selectCrossing = (crossingId, crossingStatus) => {
    this.setState({selectedCrossingId: crossingId});
    this.setState({selectedCrossingStatus: crossingStatus});
  }

  toggleFull = () => {
    this.setState({fullscreen: !this.state.fullscreen});
  }

  render() {
    const { viewport, selectedCrossingId, selectedCrossingStatus } = this.state;
    const { currentUser } = this.props;

    return (
      <div className="CrossingMapPage__page-container">        
        <Fullscreen enabled={this.state.fullscreen} onChange={fullscreen => this.setState({fullscreen})}>
          <div className="CrossingMapPage">
            <FontAwesome name='arrows-alt' size='2x' onClick={this.toggleFull} className='CrossingMapPage__fullscreen-toggle'/>
            {selectedCrossingId ? <CrossingMapOverlay crossingId={selectedCrossingId} currentUser={currentUser} selectCrossing={this.selectCrossing}/> : null}
            <div className="CrossingMapPage__map-container">
              <CrossingMap 
                mapHeight="100%"
                mapWidth="100%"
                viewport={viewport}
                selectedCrossingId={selectedCrossingId}
                selectedCrossingStatus={selectedCrossingStatus}
                selectCrossing={this.selectCrossing} />
            </div>
          </div>
        </Fullscreen>
      </div>
    );
  }
}

export default CrossingMapPage;


