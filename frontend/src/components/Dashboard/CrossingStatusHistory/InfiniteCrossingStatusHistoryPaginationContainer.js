import React, { Component } from 'react';
import InfiniteCrossingStatusHistoryList from 'components/Dashboard/CrossingStatusHistory/InfiniteCrossingStatusHistoryList';
import { graphql } from 'react-apollo';
import 'react-virtualized/styles.css';
import statusHistoryQuery from 'components/Dashboard/CrossingListPage/queries/statusHistoryQuery';
import {ContainerQuery} from 'react-container-query';
import classnames from 'classnames';

import { LARGE_ITEM_MIN_WIDTH } from 'constants/containerQueryConstants';

// The linter can't figure out how we're using this ref so I'm just gonna...
// eslint-disable-next-line
let infiniteStatusHistoryListRef;

const containerQuery = {
  'CrossingStatusHistory--lg' : {
    minWidth: LARGE_ITEM_MIN_WIDTH,
  }
}

const configObject = {
  options: (props) => {

    const variables = props.crossingId ? { crossingId: props.crossingId } : {};

    return {
      variables: variables
    }
  },
  force: true,
  props: ({ownProps, data}) => {
    const  {loading, allStatusUpdates, fetchMore} = data;
    const loadMoreRows = () => {

      return fetchMore({
        variables:{
          pageCursor:allStatusUpdates.pageInfo.endCursor,
        },
        updateQuery:(previousResult, {fetchMoreResult}) => {
          const totalCount=fetchMoreResult.allStatusUpdates.totalCount;
          const newEdges=fetchMoreResult.allStatusUpdates.edges;
          const pageInfo=fetchMoreResult.allStatusUpdates.pageInfo;
          
          if(!previousResult.allStatusUpdates) {
            return;
          }

          return {
            allStatusUpdates: {
              __typename: 'StatusUpdatesConnection',
              totalCount,
              edges:[...previousResult.allStatusUpdates.edges, ...newEdges],
              pageInfo
            }
          };
        }
      })
    }

    return {
      loading,
      allStatusUpdates,
      loadMoreRows
    }
  }
}

export class InfiniteCrossingStatusHistoryPaginationContainer extends Component {
  
  render() {
    const { loading, allStatusUpdates, loadMoreRows, showNames } = this.props;
     
    if (loading) {
      return (<div>Loading</div>);
    };
    
    return (
      <ContainerQuery query={containerQuery}> 
        {(params) => {
          const cqClassName = classnames(params);
          return (
            <div>
              <InfiniteCrossingStatusHistoryList
                {...this.props}
                ref={(ref) => infiniteStatusHistoryListRef = ref} 
                loadMoreRows={loadMoreRows}
                allStatusUpdates={allStatusUpdates}
                showNames={showNames}
                cqClassName={cqClassName} />
            </div>
          );
        }}
      </ContainerQuery>
    );
  }
}

export default graphql(statusHistoryQuery, configObject)(InfiniteCrossingStatusHistoryPaginationContainer);
