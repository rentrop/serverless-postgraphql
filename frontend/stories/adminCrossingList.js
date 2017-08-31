import React from 'react';
import { storiesOf } from '@storybook/react';
import { withApolloProvider } from 'storybook-addon-apollo-graphql';
import { gql, graphql } from 'react-apollo';
import AdminCrossingList from '../src/AdminCrossingList';
import schema from './schema/schema';

// fake db
const crossingNodes = {
  1: {
    id: 1,
    name: "Test Crossing",
    statusUpdateByLatestStatusId: {
      statusByStatusId: {
        name: "Test Status Name"
      },
      notes: "Test Notes",
      userByCreatorId: {
        id: 1,
        firstName: "Test",
        lastName: "User"
      }
    }
  }
};

const root = {
  allCrossings: () => ({ nodes: Object.values(crossingNodes) })
};

storiesOf('List Crossings', module)
  .addDecorator(withApolloProvider({ schema, root }))
  .add('List Crossings', () => <AdminCrossingList />);
