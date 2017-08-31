import React, { Component } from 'react';
import LinkButton from '../../LinkButton';
import BulkActionsDropdown from './BulkActionsDropdown';
import TableSearch from './TableSearch';
import UserList from './UserList';
import './ManageUsers.css';

class ManageUsers extends Component {
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
            <TableSearch />
          </div>
        </div>
        <UserList {...this.props} />
      </div>
    );
  }

}


export default ManageUsers;
