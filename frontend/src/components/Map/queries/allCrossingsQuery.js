import gql from 'graphql-tag';

const allCrossings = gql`
  query allCrossings($showOpen: Boolean, $showClosed: Boolean, $showCaution: Boolean, $showLongterm: Boolean, $communityId: Int) {
    searchCrossings(search: "%%", showOpen: $showOpen, showClosed: $showClosed, showCaution: $showCaution, showLongterm: $showLongterm, communityId: $communityId) {
      nodes {
        id
        geojson
        latestStatusId
        communityIds
      }
    }
  }
`;

export default allCrossings;
