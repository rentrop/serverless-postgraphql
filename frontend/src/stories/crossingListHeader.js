import React from 'react';
import { storiesOf } from '@storybook/react';
import CrossingListHeader from 'components/Dashboard/CrossingListPage/CrossingListHeader/CrossingListHeader';
import schema from 'stories/schema/schema';
import { withApolloProvider } from 'storybook-addon-apollo-graphql';

const root = {
  allCrossings: () => ({ totalCount: 6})
};

storiesOf('Crossing List Header', module)
  .addDecorator(withApolloProvider({ schema, root }))
  .add('Large Width', () => 
    <div className="storybook--lg">
      <CrossingListHeader />
    </div>)
  .add('Small Width', () => 
    <div className="storybook--sm">
	  	<CrossingListHeader />
    </div>
  );
