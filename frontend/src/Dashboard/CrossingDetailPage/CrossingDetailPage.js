import React, { Component } from 'react';
import CrossingDetails from './CrossingDetails';
import CrossingStatusHistory from './CrossingStatusHistory';

class CrossingDetailPage extends Component {
  render() {
    const crossingId = this.props.match.params.id;

    return (
      <div>
        <CrossingDetails crossingId={crossingId}/>
        <CrossingStatusHistory crossingId={crossingId}/>
      </div>
    );
  }

}

export default CrossingDetailPage;
