import gql from 'graphql-tag';

const suggestCrossings = gql`
  query suggestCrossings($search:String) {
    searchCrossings(search: $search, first:5) {
      nodes {
        id
        name
        geojson
      }
    }
  }
`;

export default suggestCrossings;
