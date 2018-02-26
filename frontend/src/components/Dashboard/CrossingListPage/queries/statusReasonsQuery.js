import gql from 'graphql-tag';

const statusReasonsQuery = gql`
  query allStatusReasons {
    allStatusReasons {
      nodes {
        id
        statusId
        name
      }
    }
  }
`;

export default statusReasonsQuery;
