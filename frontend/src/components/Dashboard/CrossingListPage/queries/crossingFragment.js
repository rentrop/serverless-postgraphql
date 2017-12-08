import gql from 'graphql-tag';

// Save the fragment into a variable
const crossingFragment = gql`
  fragment crossingInfo on Crossing {
    name
    description
    humanAddress
    communityCrossingsByCrossingId {
      nodes {
        communityByCommunityId {
          id
          name
        }
      }
    }
  }
`;

export default crossingFragment;
