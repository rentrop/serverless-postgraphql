import gql from 'graphql-tag';
import crossingFragment from './crossingFragment';

const crossingsQuery = gql`
  query allCrossings {
    allCrossings {
      nodes {
        id
        name
        description
        humanAddress
        communityCrossingsByCrossingId {
          nodes {
            communityByCommunityId {
              name
            }
          }
        }
        ...crossingInfo
      }
    }
  }
  ${crossingFragment}
`;

export default crossingsQuery;
