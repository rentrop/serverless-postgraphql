import React from 'react';
import { graphql } from 'react-apollo';
import gql from 'graphql-tag';
import Table from '../Table/Table';

const manageUsersHeaders = [{
  title: '',
  type: 'checkbox_select',
}, {
  title: 'Name',
  isFilterale: true,
  isSortable: true,
}, {
  title: 'Role',
  isFilterale: true,
  isSortable: true,
}, {
  title: 'Community',
  isFilterale: true,
  isSortable: true,
}, {
  title: 'Last active',
  isFilterale: true,
  isSortable: true,
}];

class UserList extends React.Component {
  parseRole(role) {
    const roleArray = role.split("_");
    roleArray.splice(0, 1)

    return roleArray.map((word) => {
      return (word.charAt(0).toUpperCase() + word.substr(1));
    }).join(' ');
  }

  render () {
    if (!this.props.data || this.props.data.loading) {
      return (<div>Loading</div>)
    }

    const { searchUsers } = this.props.data;

    if (searchUsers == null) {
      // TODO: add error logging
      return (<div>Error Loading Users</div>);
    }

    const userData = searchUsers.nodes.map((user) => {
    	return [
        { isLinked: true, link: `/user/${user.id}`, content: `${user.firstName} ${user.lastName}` },
        this.parseRole(user.role),
        user.communityByCommunityId.name,
        '',
      ]
    });

    return (
      <Table data={userData} headers={manageUsersHeaders} checkboxColumn={true} />
    );
  }

}

const searchUsers = gql`
  query searchUsers($searchString: String, $community: Int) {
  searchUsers(search: $searchString, community: $community) {
    nodes {
      firstName
      lastName
      role
      communityByCommunityId {
        id
        name
      }
    }
  }
}`;

export default graphql(searchUsers, {
  options: (ownProps) => ({
    variables: {
      searchString: ownProps.searchParam === "" ? null : ownProps.searchParam,
      community: ownProps.currentUser.role === "floods_super_admin" ? null : ownProps.currentUser.communityId
    }
  })
})(UserList);
