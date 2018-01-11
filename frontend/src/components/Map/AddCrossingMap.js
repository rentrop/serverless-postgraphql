import React, { Component } from 'react';
import ReactMapboxGl, { Layer, Feature } from "react-mapbox-gl";
import mapboxstyle from 'components/Map/mapboxstyle.json';
import { statusIcons } from 'constants/StatusConstants';

const Map = ReactMapboxGl({ accessToken: null });

class AddCrossingMap extends Component {

  onStyleLoad = (map) => {
    map.resize();
  }

  render() {
    const { crossingCoordinates, crossingMoved } = this.props;

    return (
        <Map
          className="CrossingStaticMap"
          style={mapboxstyle}
          center={crossingCoordinates}
          onStyleLoad = {this.onStyleLoad}
        >
          <Layer
            type="symbol"
            id="openCrossings"
            layout={{ 'icon-image': 'circle-15', 'icon-allow-overlap': true }}
            >            
             <Feature coordinates={crossingCoordinates} draggable={true} onDragEnd={crossingMoved}/>
          </Layer>
        </Map>
    );
  }
}

export default AddCrossingMap;
