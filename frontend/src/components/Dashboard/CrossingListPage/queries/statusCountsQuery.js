import gql from 'graphql-tag';

const stausCountsQuery = gql`
  query crossingCounts($search: String, $communityId: Int) {
    openCrossings: searchCrossings(search: $search, showOpen: true, showClosed: false, showCaution: false, showLongterm: false, communityId: $communityId) {
      totalCount
    }
    closedCrossings: searchCrossings(search: $search, showOpen: false, showClosed: true, showCaution: false, showLongterm: false, communityId: $communityId) {
      totalCount
    }
    cautionCrossings: searchCrossings(search: $search, showOpen: false, showClosed: false, showCaution: true, showLongterm: false, communityId: $communityId) {
      totalCount
    }
    longtermCrossings: searchCrossings(search: $search, showOpen: false, showClosed: false, showCaution: false, showLongterm: true, communityId: $communityId) {
      totalCount
    }
  }
`;

export default stausCountsQuery;
