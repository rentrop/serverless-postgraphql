import React from 'react';
import { storiesOf } from '@storybook/react';
import StatusToggle from '../Dashboard/CrossingListPage/CrossingListItem/StatusToggle'

storiesOf('Crossing List Item Status Toggle', module)
  .add('Open', () => <StatusToggle status='Open'/>)
  .add('Caution', () => <StatusToggle status='Caution'/>)
  .add('Closed', () => <StatusToggle status='Closed'/>)
  .add('Long Term Closure', () => <StatusToggle status='Long Term Closure'/>)
