import React from 'react';
import { storiesOf } from '@storybook/react';
import CrossingListHeader from 'components/Dashboard/CrossingListPage/CrossingListHeader/CrossingListHeader';
import schema from 'stories/schema/schema';
import { withApolloProvider } from 'storybook-addon-apollo-graphql';

const root = {
  searchCrossings: () => ({ totalCount: 6 }),
};

const user = {
  role: 'floods_super_admin',
};

storiesOf('Crossing List Header', module)
  .addDecorator(withApolloProvider({ schema, root }))
  .add('Large Width', () => (
    <div className="storybook--lg">
      <CrossingListHeader currentUser={user} />
    </div>
  ))
  .add('Small Width', () => (
    <div className="storybook--sm">
      <CrossingListHeader currentUser={user} />
    </div>
  ));
