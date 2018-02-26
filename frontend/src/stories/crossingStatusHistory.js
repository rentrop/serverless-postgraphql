import React from 'react';
import { storiesOf } from '@storybook/react';
import CrossingStatusHistory from 'components/Dashboard/CrossingDetailPage/CrossingStatusHistory';

const history = [
  {
    userByCreatorId: {
      id: 1,
      lastName: 'Admin',
      firstName: 'Super',
    },
    statusByStatusId: {
      id: 2,
      name: 'Closed',
    },
    statusReasonByStatusReasonId: {
      name: 'Flooded',
    },
    statusDurationByStatusDurationId: null,
    createdAt: '2017-06-04T09:27:57',
    notes: 'notes',
  },
  {
    userByCreatorId: {
      id: 1,
      lastName: 'Admin',
      firstName: 'Super',
    },
    statusByStatusId: {
      id: 1,
      name: 'Open',
    },
    statusReasonByStatusReasonId: null,
    statusDurationByStatusDurationId: null,
    createdAt: '2017-05-28T09:27:57',
    notes: 'notes',
  },
  {
    userByCreatorId: {
      id: 1,
      lastName: 'Admin',
      firstName: 'Super',
    },
    statusByStatusId: {
      id: 3,
      name: 'Caution',
    },
    statusReasonByStatusReasonId: {
      name: 'Flooded',
    },
    statusDurationByStatusDurationId: null,
    createdAt: '2017-05-25T09:27:57',
    notes: 'notes',
  },
  {
    userByCreatorId: {
      id: 1,
      lastName: 'Admin',
      firstName: 'Super',
    },
    statusByStatusId: {
      id: 4,
      name: 'Long-Term Closure',
    },
    statusReasonByStatusReasonId: null,
    statusDurationByStatusDurationId: null,
    createdAt: '2017-05-20T09:27:57',
    notes: 'notes',
  },
  {
    userByCreatorId: {
      id: 1,
      lastName: 'Admin',
      firstName: 'Super',
    },
    statusByStatusId: {
      id: 1,
      name: 'Open',
    },
    statusReasonByStatusReasonId: null,
    statusDurationByStatusDurationId: null,
    createdAt: '2017-05-19T09:27:57',
    notes: 'notes',
  },
  {
    userByCreatorId: {
      id: 1,
      lastName: 'Admin',
      firstName: 'Super',
    },
    statusByStatusId: {
      id: 2,
      name: 'Closed',
    },
    statusReasonByStatusReasonId: {
      name: 'Flooded',
    },
    statusDurationByStatusDurationId: null,
    createdAt: '2017-05-17T09:27:57',
    notes: 'notes',
  },
  {
    userByCreatorId: {
      id: 1,
      lastName: 'Admin',
      firstName: 'Super',
    },
    statusByStatusId: {
      id: 1,
      name: 'Open',
    },
    statusReasonByStatusReasonId: null,
    statusDurationByStatusDurationId: null,
    createdAt: '2017-05-11T09:27:57',
    notes: 'notes',
  },
];

storiesOf('Crossing Status History', module)
  .add('Large Width', () => (
    <div className="storybook--lg">
      <CrossingStatusHistory history={history} />
    </div>
  ))
  .add('Small Width', () => (
    <div className="storybook--sm">
      <CrossingStatusHistory history={history} />
    </div>
  ));
