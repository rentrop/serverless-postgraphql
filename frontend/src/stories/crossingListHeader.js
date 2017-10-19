import React from 'react';
import { storiesOf } from '@storybook/react';
import CrossingListHeader from '../Dashboard/CrossingListPage/CrossingListHeader/CrossingListHeader';
import schema from './schema/schema';
import { withApolloProvider } from 'storybook-addon-apollo-graphql';

const root = {
  allCrossings: () => ({ totalCount: 6})
};

storiesOf('Crossing List Header', module)
  .addDecorator(withApolloProvider({ schema, root }))
  .add('Full Width', () => <CrossingListHeader  />)
  .add('Width 900px', () => 
    <div style={{width: '900px'}}>
      <CrossingListHeader />
    </div>)
  .add('Width 400px', () => 
    <div style={{width: '400px'}}>
	  	<CrossingListHeader />
    </div>
  );
