import React from 'react';
import { storiesOf } from '@storybook/react';
import CrossingListItem from '../Dashboard/CrossingListPage/CrossingListItem/CrossingListItem'

storiesOf('Crossing List Item', module)
  .add('Open', () => <CrossingListItem status='Open'/>)
  .add('Open Dirty', () => <CrossingListItem status='Open' dirty="true"/>)
  .add('Caution', () => <CrossingListItem status='Caution'/>)
  .add('Caution Dirty', () => <CrossingListItem status='Caution' dirty="true"/>)
  .add('Closed', () => <CrossingListItem status='Closed'/>)
  .add('Closed Dirty', () => <CrossingListItem status='Closed' dirty="true"/>)
  .add('Long Term Closure', () => <CrossingListItem status='Long Term Closure'/>)
  .add('Long Term Closure Dirty', () => <CrossingListItem status='Long Term Closure' dirty="true"/>)
