import React, { Component } from 'react';
import { Link } from 'react-router-dom';
import { graphql } from 'react-apollo';
import gql from 'graphql-tag';

import LinkButton from '../LinkButton';
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
          <div className="flexitem--pushed-right">
            <LinkButton url="/createuser" text="Add New" />
          </div>
        </div>
        <div className="flexcontainer">
          <BulkActionsDropdown />
          <div className="flexitem--pushed-right">
            <TableSearch />
          </div>
        </div>
        <UserList {...this.props} />
      </div>
    );
  }

}


export default ManageUsers;
