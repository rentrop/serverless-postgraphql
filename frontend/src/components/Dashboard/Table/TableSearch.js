import React, { Component } from 'react';
import './TableSearch.css';

class TableSearch extends Component {
  render() {
    return (
      <form
        action=""
        className="flexcontainer"
        onSubmit={this.props.handleSubmit}
      >
        <input
          type="text"
          name="tableSearch"
          placeholder="Search names and communities"
          className="TableSearch__input"
        />
        <input
          type="submit"
          className="TableSearch__search-button"
          aria-label="search"
        />
      </form>
    );
  }
}

export default TableSearch;
