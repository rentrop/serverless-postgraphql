import React, { Component } from 'react';
import './Dropdown.css'

class Dropdown extends Component {

  render() {
    return (
      <div className="Dropdown">
        <select className="Dropdown__select" name="" id="">
          <option value="" disabled>Options</option>
          <option value="1">First</option>
          <option value="2">Second</option>
        </select>
      </div>
    );
  }

}

export default Dropdown;
