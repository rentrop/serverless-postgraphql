import React, { Component } from 'react';
import LinkButton from '../../LinkButton';
import BulkActionsDropdown from '../Table/BulkActionsDropdown';
import TableSearch from '../Table/TableSearch';
import CrossingList from './CrossingList';
import './CrossingListPage.css';

class CrossingListPage extends Component {
  constructor(props) {
    super(props);
    this.state = { searchParam: '' };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    this.setState({ searchParam: e.target.elements.tableSearch.value });
  }

  render() {
    return (
      <div className="ManageCrossings">
        <CrossingList {...this.props} searchParam={this.state.searchParam} />
      </div>
    );
  }

}


export default CrossingListPage;
