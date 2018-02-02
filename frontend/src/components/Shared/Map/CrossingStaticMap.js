import React, { Component } from 'react';
import ReactMapboxGl, { Marker } from "react-mapbox-gl";
import mapboxstyle from 'components/Shared/Map/mapboxstyle.json';
import { statusIcons } from 'constants/StatusConstants';

const Map = ReactMapboxGl({ accessToken: null, interactive: false });

class CrossingStaticMap extends Component {

  onStyleLoad = (map) => {
    map.resize();
  }

  render() {
    const coordinates = JSON.parse(this.props.crossing.geojson).coordinates;
    const statusId = this.props.crossing.statusByLatestStatusId.id;
    const status = this.props.crossing.statusByLatestStatusId.name;

    return (
        <Map
          className="CrossingStaticMap"
          center={coordinates}
          style={mapboxstyle}
          onStyleLoad = {this.onStyleLoad}
        >
          <Marker
            coordinates={coordinates}
            anchor="bottom">
            <img src={statusIcons[statusId]} alt={status} />
          </Marker>
        </Map>
    );
  }
}

export default CrossingStaticMap;
