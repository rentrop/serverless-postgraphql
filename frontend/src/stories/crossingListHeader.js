import React from 'react';
import { storiesOf } from '@storybook/react';
import CrossingListHeader from '../Dashboard/CrossingListPage/CrossingListHeader/CrossingListHeader';


storiesOf('Crossing List Header', module)
  .add('Full Width', () => <CrossingListHeader  />)
  .add('Width < 768px', () => 
  	<div style={{width: '400px'}}>
	  	<CrossingListHeader />
	</div>
  );
