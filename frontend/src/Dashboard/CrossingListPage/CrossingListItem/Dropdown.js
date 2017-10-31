import React, { Component } from 'react';
import 'Dashboard/CrossingListPage/CrossingListItem/Dropdown.css'

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
          defaultValue={selected}>
          {options.map(opt => 
            <option value={opt.id} key={opt.id}>
              {opt.name}
            </option>
          )}
        </select>
      </div>
    );
  }

}

export default Dropdown;
