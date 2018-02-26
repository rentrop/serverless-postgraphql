import React, { Component } from "react";
import "components/Dashboard/Dropdown/Dropdown.css";

import FontAwesome from "react-fontawesome";

class Dropdown extends Component {
  render() {
    const { selected, options } = this.props;

    return (
      <div className="Dropdown">
        <select
          className="Dropdown__select"
          name=""
          id=""
          onChange={this.props.onChange}
          defaultValue={selected}
        >
          {options.map(opt => (
            <option value={opt.id} key={opt.id}>
              {opt.name}
            </option>
          ))}
        </select>
        <div className="Chevron">
          <FontAwesome name="chevron-down" />
        </div>
      </div>
    );
  }
}

export default Dropdown;
