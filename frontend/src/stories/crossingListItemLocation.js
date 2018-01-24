import React from 'react';
import { storiesOf } from '@storybook/react';
import Location from 'components/Dashboard/CrossingListPage/CrossingListItem/Location'

const crossing = {
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
  "communities": {
    "nodes": [
      {
          "name": "All of Texas.",
      }
    ],
  },
}

storiesOf('Crossing List Item Location', module)
  .add('Location', () => <Location crossing={ crossing } />);
