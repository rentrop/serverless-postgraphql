import React from 'react';
import FontAwesome from 'react-fontawesome';
import 'components/Dashboard/CrossingListPage/CrossingListItem/Location.css';

class Location extends React.Component {
  render () {
    const { crossing } = this.props;
    const communityNames = crossing.communities.nodes.map(community => community.name);
    
    return (
      <div className="LocationContainer">
        <div className="MapIcon">
          <FontAwesome name="map-marker" />
        </div>
        <div className="LocationText">
          <div>{ crossing.humanAddress }</div>
          <div style={{fontStyle:"italic"}}>{ crossing.description }</div>
          <div>{communityNames.join(", ")}</div>
        </div>
      </div>
    );
  }
}

export default Location;
