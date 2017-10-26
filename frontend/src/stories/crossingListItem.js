import React from 'react';
import { storiesOf } from '@storybook/react';
import CrossingListItem from '../Dashboard/CrossingListPage/CrossingListItem/CrossingListItem'
import * as statusConstants from '../Dashboard/CrossingListPage/CrossingListItem/StatusConstants'

const reasons = [
  { id: 1, name: 'Flooded', statusId: 2},
  { id: 2, name: 'Bridge Broken', statusId: 2},
  { id: 1, name: 'Flooded', statusId: 3},
  { id: 2, name: 'Bridge Broken', statusId: 3},
  { id: 1, name: 'Flooded', statusId: 4},
  { id: 2, name: 'Bridge Broken', statusId: 4}
];

const durations = [
  { id: 1, name: 'A Minute'},
  { id: 2, name: 'A Week'}
]

const openCrossing = {
  "id": 1,
  "name": "Spurlock Valley",
  "description": "E of Intersection w\/ Clifford",
  "humanAddress": "605 Spurlock Valley \u00b7 West Lake Hills, TX 78746",
  "statusUpdateByLatestStatusUpdateId": {
    "statusId": 1,
    "createdAt": "2017-10-10T04:35:37.306767",
    "notes": "All Clear",
    "userByCreatorId": {
      "firstName": "Super",
      "lastName": "Admin",
    },
  },
  "communityCrossingsByCrossingId": {
    "nodes": [
      {
        "communityByCommunityId": {
          "name": "All of Texas.",
        },
      }
    ],
  },
}

const closedCrossing = {
  "id": 1,
  "name": "Spurlock Valley",
  "description": "E of Intersection w\/ Clifford",
  "humanAddress": "605 Spurlock Valley \u00b7 West Lake Hills, TX 78746",
  "statusUpdateByLatestStatusUpdateId": {
    "statusId": 2,
    "statusReasonId": 1,
    "createdAt": "2017-10-10T04:35:37.306767",
    "notes": "No Go",
    "userByCreatorId": {
      "firstName": "Super",
      "lastName": "Admin",
    },
  },
  "communityCrossingsByCrossingId": {
    "nodes": [
      {
        "communityByCommunityId": {
          "name": "All of Texas.",
        },
      }
    ],
  },
}

const cautionCrossing = {
  "id": 1,
  "name": "Spurlock Valley",
  "description": "E of Intersection w\/ Clifford",
  "humanAddress": "605 Spurlock Valley \u00b7 West Lake Hills, TX 78746",
  "statusUpdateByLatestStatusUpdateId": {
    "statusId": 3,
    "statusReasonId": 1,
    "createdAt": "2017-10-10T04:35:37.306767",
    "notes": "Watch Out",
    "userByCreatorId": {
      "firstName": "Super",
      "lastName": "Admin",
    },
  },
  "communityCrossingsByCrossingId": {
    "nodes": [
      {
        "communityByCommunityId": {
          "name": "All of Texas.",
        },
      }
    ],
  },
}

const longtermCrossing = {
  "id": 1,
  "name": "Spurlock Valley",
  "description": "E of Intersection w\/ Clifford",
  "humanAddress": "605 Spurlock Valley \u00b7 West Lake Hills, TX 78746",
  "statusUpdateByLatestStatusUpdateId": {
    "statusId": 4,
    "statusReasonId": 2,
    "statusDurationId": 2,
    "createdAt": "2017-10-10T04:35:37.306767",
    "notes": "Gonna be a while",
    "userByCreatorId": {
      "firstName": "Super",
      "lastName": "Admin",
    },
  },
  "communityCrossingsByCrossingId": {
    "nodes": [
      {
        "communityByCommunityId": {
          "name": "All of Texas.",
        },
      }
    ],
  },
}

storiesOf('Crossing List Item', module)
  .add('Open', () => <CrossingListItem reasons={reasons} durations={durations} crossing={openCrossing} />)
  .add('Open Dirty', () => <CrossingListItem reasons={reasons} durations={durations} crossing={openCrossing} dirty="true" />)
  .add('Caution', () => <CrossingListItem reasons={reasons} durations={durations} crossing={cautionCrossing} />)
  .add('Caution Dirty', () => <CrossingListItem reasons={reasons} durations={durations} crossing={cautionCrossing} dirty="true" />)
  .add('Closed', () => <CrossingListItem reasons={reasons} durations={durations} crossing={closedCrossing} />)
  .add('Closed Dirty', () => <CrossingListItem reasons={reasons} durations={durations} crossing={closedCrossing} dirty="true" />)
  .add('Long Term Closure', () => <CrossingListItem reasons={reasons} durations={durations} crossing={longtermCrossing} />)
  .add('Long Term Closure Dirty', () => <CrossingListItem reasons={reasons} durations={durations} crossing={longtermCrossing} dirty="true" />)
  .add('Width 900px', () => 
    <div style={{width: '900px'}}>
      <CrossingListItem reasons={reasons} durations={durations} crossing={longtermCrossing} />
    </div>)
  .add('Width 400px', () => 
    <div style={{width: '400px'}}>
      <CrossingListItem reasons={reasons} durations={durations} crossing={longtermCrossing} />
    </div>
  );
