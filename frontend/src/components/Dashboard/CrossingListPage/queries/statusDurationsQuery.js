import gql from 'graphql-tag';

const statusDurationsQuery = gql`
  query allStatusDurations {
    allStatusDurations {
      nodes {
        id
        name
      }
    }
  }
`;

export default statusDurationsQuery;
