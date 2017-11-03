import gql from 'graphql-tag';
import statusUpdateFragment from 'components/Dashboard/CrossingListPage/queries/statusUpdateFragment';
import crossingFragment from 'components/Dashboard/CrossingListPage/queries/crossingFragment';

const crossingsQuery = gql`
  query allCrossings {
    allCrossings {
      nodes {
        id
        ...crossingInfo
        humanAddress
        communityCrossingsByCrossingId {
          nodes {
            communityByCommunityId {
              id
              name
            }
          }
        }
        ...statusUpdateInfo
      }
    }
  }
  ${crossingFragment}
  ${statusUpdateFragment}
`;

export default crossingsQuery;
