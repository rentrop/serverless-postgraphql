import React from 'react';
import FontAwesome from 'react-fontawesome';
import './Location.css';

class Location extends React.Component {
  render () {
    const { crossing } = this.props;
    const communityNames = crossing.communityCrossingsByCrossingId.nodes.map(community => community.communityByCommunityId.name);
    
    return (
      <div className="LocationContainer">
        <div className="MapIcon">
          <FontAwesome name="map-marker" />
        </div>
        <div className="LocationText">
          <div>{ crossing.humanAddress }</div>
          <div style={{"font-style":"italic"}}>{ crossing.description }</div>
          <div>{communityNames.join(", ")}</div>
        </div>
      </div>
    );
  }
}

export default Location;
