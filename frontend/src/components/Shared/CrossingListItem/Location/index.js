import React from 'react';

import './Location.css';

class Location extends React.Component {
  render() {
    const { crossing } = this.props;

    return (
      <div className="CrossingListItemLocationContainer">
        <div>{crossing.humanAddress}</div>
        <div className="CrossingListItemLocationContainer__description">{crossing.description}</div>
      </div>
    );
  }
}

export default Location;
