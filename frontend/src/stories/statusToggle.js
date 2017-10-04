import React from 'react';
import { storiesOf } from '@storybook/react';
import StatusToggle from '../Dashboard/CrossingListPage/StatusToggle'

storiesOf('Toggle Crossing Status', module)
  .add('Open', () => <StatusToggle status='open'/>)
  .add('Caution', () => <StatusToggle status='caution'/>)
  .add('Closed', () => <StatusToggle status='closed'/>)
  .add('Long Term Closure', () => <StatusToggle status='longterm'/>)
