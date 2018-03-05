import React from 'react';

class Location extends React.Component {
  render() {
    const { crossing } = this.props;

    return (
      <div className="LocationContainer">
        <div>{crossing.humanAddress}</div>
        <div>{crossing.description}</div>
        <div>
          {crossing.communities.nodes.map(community => (
            <a href="/" key={community.id}>
              {/* TODO: Link to community */}
              {community.name}
            </a>
          ))}
        </div>
      </div>
    );
  }
}

export default Location;
