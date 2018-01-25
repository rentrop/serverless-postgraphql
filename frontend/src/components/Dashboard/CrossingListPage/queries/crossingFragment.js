import gql from 'graphql-tag';
import updateCrossingFragment from 'components/Dashboard/CrossingListPage/queries/updateCrossingFragment';
import deleteCrossingFragment from 'components/Dashboard/CrossingListPage/queries/deleteCrossingFragment';

// Save the fragment into a variable
const crossingFragment = gql`
  fragment crossingInfo on Crossing {
    id
    ...updateCrossingInfo
    name
    description
    humanAddress
    geojson
    communityIds
    ...deleteCrossingInfo
    communities {
      nodes {
        id
        name
      }
    }
  }
  ${updateCrossingFragment}
  ${deleteCrossingFragment}
`;

export default crossingFragment;
