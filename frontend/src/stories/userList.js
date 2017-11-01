import React from 'react';
import { storiesOf } from '@storybook/react';
import { withApolloProvider } from 'storybook-addon-apollo-graphql';
import { gql, graphql } from 'react-apollo';
import UserList from 'Dashboard/ManageUsersPage/UserList';
import schema from 'stories/schema/schema';

// fake db
const userNodes = {
  1: {
    id: 1,
    firstName: "Test",
    lastName: "User",
    role: "floods_super_admin",
    communityByCommunityId: {
      name: "all of texas",
      id: '1',
    }
  }
};

const superAdmin = {
  communityId: 1,
  firstName: "Super",
  id: 1,
  lastName: "Admin",
  role: "floods_super_admin",
}

const root = {
  searchUsers: () => ({ nodes: Object.values(userNodes) }),
};

storiesOf('List Users', module)
  .addDecorator(withApolloProvider({ schema, root }))
  .add('List Users', () => <UserList currentUser={superAdmin} />);
