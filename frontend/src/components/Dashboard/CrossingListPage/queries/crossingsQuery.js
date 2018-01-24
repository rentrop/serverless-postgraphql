import gql from 'graphql-tag';
import statusUpdateFragment from 'components/Dashboard/CrossingListPage/queries/statusUpdateFragment';
import crossingFragment from 'components/Dashboard/CrossingListPage/queries/crossingFragment';

const crossingsQuery = gql`
  query searchCrossings($search:String,
                        $showOpen:Boolean,
                        $showClosed:Boolean,
                        $showCaution:Boolean,
                        $showLongterm:Boolean,
                        $communityId:Int,
                        $pageCursor:Cursor,
                        $orderAsc:Boolean) {
    searchCrossings(
      search: $search
      showOpen: $showOpen
      showClosed: $showClosed
      showCaution: $showCaution
      showLongterm: $showLongterm
      communityId: $communityId
      first: 10
      after: $pageCursor
      orderAsc: $orderAsc
    ) {
      __typename
      totalCount
      pageInfo {
        startCursor
        endCursor
        hasNextPage
        hasPreviousPage
      }
      edges {
        cursor
        node {
          id
          ...crossingInfo
          ...statusUpdateInfo  
        }
      }
    }
  }
  ${crossingFragment}
  ${statusUpdateFragment}
`;

export default crossingsQuery;
