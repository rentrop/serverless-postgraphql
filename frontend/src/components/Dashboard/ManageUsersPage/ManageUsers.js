import React, { Component } from 'react';
import LinkButton from 'components/LinkButton';
import BulkActionsDropdown from 'components/Dashboard/Table/BulkActionsDropdown';
import TableSearch from 'components/Dashboard/Table/TableSearch';
import UserList from 'components/Dashboard/ManageUsersPage/UserList';
import 'components/Dashboard/ManageUsersPage/ManageUsers.css';
import MobileDetect from 'mobile-detect';

const md = new MobileDetect(window.navigator.userAgent);

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
    if(md.mobile()) {
      return (
        <div>Managing users is not yet supported on mobile.</div>
      );
    }

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
