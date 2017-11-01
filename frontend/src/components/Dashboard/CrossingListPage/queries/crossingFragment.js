import gql from 'graphql-tag';

// Save the fragment into a variable
const crossingFragment = gql`
  fragment crossingInfo on Crossing {
    id
    latestStatusId
    latestStatusUpdateId
    statusUpdateByLatestStatusUpdateId {
      id
      crossingId
      statusId
      statusReasonId
      statusDurationId
      createdAt
      notes
      userByCreatorId {
        firstName
        lastName
      }
    }
  }
`;

export default crossingFragment;
