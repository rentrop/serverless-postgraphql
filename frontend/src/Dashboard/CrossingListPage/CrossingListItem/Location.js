import React from 'react';
import FontAwesome from 'react-fontawesome';
import './Location.css';

class Location extends React.Component {
  render () {
    return (
      <div className="LocationContainer">
        <div className="MapIcon">
          <FontAwesome name="map-marker" />
        </div>
        <div className="LocationText">
          <div>605 Spurlock Valley · West Lake Hills, TX 78746</div>
          <div style={{"font-style":"italic"}}>E of Intersection w/ Clifford</div>
          <div>City of Austin, Travis County</div>
        </div>
      </div>
    );
  }
}

export default Location;
