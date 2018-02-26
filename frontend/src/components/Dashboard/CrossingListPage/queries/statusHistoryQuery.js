import gql from 'graphql-tag';

const statusHistoryQuery = gql`
  query crossingHistory($crossingId: Int) {
    allStatusUpdates(
      condition: { crossingId: $crossingId }
      orderBy: CREATED_AT_DESC
    ) {
      totalCount
      pageInfo {
        startCursor
        endCursor
        hasNextPage
        hasPreviousPage
      }
      edges {
        cursor
        node {
          userByCreatorId {
            id
            lastName
            firstName
          }
          statusByStatusId {
            id
            name
          }
          statusReasonByStatusReasonId {
            name
          }
          statusDurationByStatusDurationId {
            name
          }
          createdAt
          notes
          crossingId
          crossingByCrossingId {
            name
            humanAddress
          }
        }
      }
    }
  }
`;

export default statusHistoryQuery;
