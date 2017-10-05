import React from 'react';
import FontAwesome from 'react-fontawesome';
import './DateTime.css';

class DateTime extends React.Component {
  render () {
    return (
      <div className="DateTimeContainer">
        <div className="ClockIcon">
          <FontAwesome name="clock-o" />
        </div>
        <div className="DateTimeText">
          <div>7/17/17, 12:01am</div>
          <div style={{"text-decoration":"underline"}}>L. Leopold</div>
        </div>
      </div>
    );
  }
}

export default DateTime;
