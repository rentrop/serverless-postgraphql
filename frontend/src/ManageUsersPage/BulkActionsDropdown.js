import React, { Component } from 'react';
import './BulkActionsDropdown.css'

class BulkActionsDropdown extends Component {

  render() {
    return (
      <div className="BulkActionsDropdown">
        <select className="BulkActionsDropdown__select" name="" id="">
          <option value="" disabled selected>Actions</option>
          <option value="1">Do Something</option>
          <option value="2">Do Something Else</option>
        </select>
      </div>
    );
  }

}

export default BulkActionsDropdown;
