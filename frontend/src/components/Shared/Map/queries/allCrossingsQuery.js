import gql from 'graphql-tag';

const allCrossings = gql`
  query allCrossings(
    $search: String
    $showOpen: Boolean
    $showClosed: Boolean
    $showCaution: Boolean
    $showLongterm: Boolean
    $communityId: Int
  ) {
    searchCrossings(
      search: $search
      showOpen: $showOpen
      showClosed: $showClosed
      showCaution: $showCaution
      showLongterm: $showLongterm
      communityId: $communityId
    ) {
      nodes {
        id
        name
        geojson
        latestStatusId
        latestStatusCreatedAt
        communityIds
      }
    }
  }
`;

export default allCrossings;
