import React, { Component } from 'react';
import './Dropdown.css'

class Dropdown extends Component {

  render() {
    const { selected, options } = this.props;

    return (
      <div className="Dropdown">
        <select 
          className="Dropdown__select"
          name=""
          id=""
          onChange={this.props.onChange}>
          {options.map(opt => 
            <option value={opt.id} selected={opt.id === selected}>
              {opt.name}
            </option>
          )}
        </select>
      </div>
    );
  }

}

export default Dropdown;
