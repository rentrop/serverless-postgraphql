import React from 'react';
import { graphql } from 'react-apollo';
import gql from 'graphql-tag';
import Table from './Table';

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
    if (this.props.data.loading) {
      return (<div>Loading</div>)
    }

    if (this.props.data.allUsers == null) {
      // TODO: add error logging
      return (<div>Error Loading Users</div>);
    }

    const userData = this.props.data.allUsers.nodes.map((user) => {
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

const allUsers = gql`
  {
    allUsers {
      nodes {
        id
        firstName
        lastName
        role
        communityByCommunityId {
          name
        }
      }
    }
  }
`;

export default graphql(allUsers)(UserList);
