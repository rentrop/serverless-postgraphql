import gql from 'graphql-tag';

// Save the fragment into a variable
const updateCrossingFragment = gql`
  fragment updateCrossingInfo on Crossing {
    name
    description
  }
`;

export default updateCrossingFragment;
