import gql from 'graphql-tag';

const stausCountsQuery = gql`
  {
    openCrossings: allCrossings(condition: {latestStatusId: 1}) {
      totalCount
    }
    closedCrossings: allCrossings(condition: {latestStatusId: 2}) {
      totalCount
    }
    cautionCrossings: allCrossings(condition: {latestStatusId: 3}) {
      totalCount
    }
    longtermCrossings: allCrossings(condition: {latestStatusId: 4}) {
      totalCount
    }
  }
`;

export default stausCountsQuery;
