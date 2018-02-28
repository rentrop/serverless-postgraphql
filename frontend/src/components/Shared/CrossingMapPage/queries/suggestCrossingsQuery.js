import gql from 'graphql-tag';

const suggestCrossings = gql`
  query suggestCrossings($search: String, $communityId: Int) {
    searchCrossings(
      search: $search
      communityId: $communityId
      showOpen: true
      showClosed: true
      showCaution: true
      showLongterm: true
      first: 5
    ) {
      nodes {
        id
        name
        geojson
      }
    }
  }
`;

export default suggestCrossings;
