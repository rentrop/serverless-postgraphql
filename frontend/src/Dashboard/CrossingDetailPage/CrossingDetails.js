import React, { Component } from 'react';

class CrossingDetails extends Component {

  render() {
    const { crossing, community } = this.props;

    return (
      <div>
        <div>Crossing Details: {crossing.id}</div>
        <div> {crossing.humanCoordinates} </div>
        <input type='text' defaultValue={crossing.name}></input>
        <div> {crossing.humanAddress} </div>
        <input type='text' defaultValue={crossing.description}></input>
        <input type='text' defaultValue={community.name}></input>
        <div> SAVE CROSSING </div>
        <div> CANCEL EDITS </div>
        <div> DELETE CROSSING </div>
      </div>
    );
  }

}

export default CrossingDetails;
