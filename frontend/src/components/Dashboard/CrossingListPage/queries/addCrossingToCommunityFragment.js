import gql from 'graphql-tag';

// Save the fragment into a variable
const addCrossingToCommunityFragment = gql`
  fragment addCrossingToCommunityInfo on Crossing {
    communityIds
    communities {
      nodes {
        id
        name
      }
    }
  }
`;

export default addCrossingToCommunityFragment;
