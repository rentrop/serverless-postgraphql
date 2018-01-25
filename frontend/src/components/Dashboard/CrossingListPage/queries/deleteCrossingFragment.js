import gql from 'graphql-tag';

// Save the fragment into a variable
const deleteCrossingFragment = gql`
  fragment deleteCrossingInfo on Crossing {
    active
  }
`;

export default deleteCrossingFragment;
