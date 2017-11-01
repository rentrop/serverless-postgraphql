import React, { Component } from 'react';

class CrossingStatusHistory extends Component {
  render() {
    const { history } = this.props;

    return (
      <div>
        <div>Crossing Status History: {this.props.crossingId}</div>
        {history.map(update => 
          <div> Update: {update.id} </div>
        )}
      </div>
    );
  }

}

export default CrossingStatusHistory;
