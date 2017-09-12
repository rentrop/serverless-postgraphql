import React, { Component } from 'react';
import LinkButton from '../../LinkButton';
import BulkActionsDropdown from './BulkActionsDropdown';
import TableSearch from './TableSearch';
import UserList from './UserList';
import './ManageUsers.css';

class ManageUsers extends Component {
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
      <div className="ManageUsers">
        <div className="flexcontainer">
          <h1 className="ManageUsers__h1">Manage Users</h1>
          <div className="ManageUsers__right-aligned-element">
            <LinkButton url="/createuser" text="Add New" />
          </div>
        </div>
        <div className="flexcontainer">
          <BulkActionsDropdown />
          <div className="ManageUsers__right-aligned-element">
            <TableSearch handleSubmit={this.handleSubmit} />
          </div>
        </div>
        <UserList {...this.props} searchParam={this.state.searchParam} />
      </div>
    );
  }

}


export default ManageUsers;
