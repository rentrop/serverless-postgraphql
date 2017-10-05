import React from 'react';
import { storiesOf } from '@storybook/react';
import CrossingListItem from '../Dashboard/CrossingListPage/CrossingListItem/CrossingListItem'
import * as statusConstants from '../Dashboard/CrossingListPage/CrossingListItem/StatusConstants'

storiesOf('Crossing List Item', module)
  .add('Open', () => <CrossingListItem savedStatus={statusConstants.OPEN}/>)
  .add('Open Dirty', () => <CrossingListItem savedStatus={statusConstants.OPEN} dirty="true"/>)
  .add('Caution', () => <CrossingListItem savedStatus={statusConstants.CAUTION}/>)
  .add('Caution Dirty', () => <CrossingListItem savedStatus={statusConstants.CAUTION} dirty="true"/>)
  .add('Closed', () => <CrossingListItem savedStatus={statusConstants.CLOSED}/>)
  .add('Closed Dirty', () => <CrossingListItem savedStatus={statusConstants.CLOSED} dirty="true"/>)
  .add('Long Term Closure', () => <CrossingListItem savedStatus={statusConstants.LONGTERM}/>)
  .add('Long Term Closure Dirty', () => <CrossingListItem savedStatus={statusConstants.LONGTERM} dirty="true"/>)
