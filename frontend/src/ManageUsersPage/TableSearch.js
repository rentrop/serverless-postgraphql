import React, { Component } from 'react';
import './TableSearch.css'

class TableSearch extends Component {

  render() {
    return (
      <form action="" className="flexcontainer">
        <input type="text" placeholder="Search names and communities"
          className="TableSearch__input"
        />
        <input type="button" className="TableSearch__search-button"
          aria-label="search"
        />
      </form>
    );
  }

}

export default TableSearch;
