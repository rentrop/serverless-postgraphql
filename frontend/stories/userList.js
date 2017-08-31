import React from 'react';
import { storiesOf } from '@storybook/react';
import { withApolloProvider } from 'storybook-addon-apollo-graphql';
import { gql, graphql } from 'react-apollo';
import UserList from '../src/Dashboard/ManageUsersPage/UserList';
import schema from './schema/schema';

// fake db
const userNodes = {
  1: {
    id: 1,
    firstName: "Test",
    lastName: "User",
    role: "floods_super_admin",
    communityByCommunityId: {
      name: "all of texas",
    }
  }
};

const root = {
  allUsers: () => ({ nodes: Object.values(userNodes) })
};

storiesOf('List Users', module)
  .addDecorator(withApolloProvider({ schema, root }))
  .add('List Users', () => <UserList />);
