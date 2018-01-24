import React, { Component } from 'react';
import 'components/Dashboard/CrossingListPage/CrossingListHeader/CrossingListHeader.css';
import statusCountsQuery from 'components/Dashboard/CrossingListPage/queries/statusCountsQuery';
import { graphql } from 'react-apollo';
import classnames from 'classnames';

class CrossingListStatusCounts extends Component {
  render() {
    const isLoading = (
      !this.props.data ||
       this.props.data.loading
    );

    const { toggleShowOpen,
            toggleShowClosed,
            toggleShowCaution, 
            toggleShowLongterm, 
            showOpen, 
            showClosed, 
            showCaution, 
            showLongterm,
            params } = this.props;

    let openCrossingCount, closedCrossingCount, cautionCrossingCount, longtermCrossingCount;
    openCrossingCount = closedCrossingCount = cautionCrossingCount = longtermCrossingCount = ' ... ';
    if (!isLoading) {
      const { openCrossings, closedCrossings, cautionCrossings, longtermCrossings } = this.props.data;
      openCrossingCount = openCrossings.totalCount;
      closedCrossingCount = closedCrossings.totalCount;
      cautionCrossingCount = cautionCrossings.totalCount;
      longtermCrossingCount = longtermCrossings.totalCount;
    }
    
    return (

    <div className={classnames(params, 'CrossingListFilter')}>
      <label className={classnames(params, 'CrossingListFilterItem')}>
        <input className={classnames(params, 'CrossingListFilterCheckbox')} type='checkbox' defaultChecked={showOpen} onClick={toggleShowOpen}/>
        Open ({openCrossingCount})
      </label>
      <label className={classnames(params, 'CrossingListFilterItem')}>
        <input className={classnames(params, 'CrossingListFilterCheckbox')} type='checkbox' defaultChecked={showCaution} onClick={toggleShowCaution}/>
        Caution ({cautionCrossingCount})
      </label>
      <label className={classnames(params, 'CrossingListFilterItem')}>
        <input className={classnames(params, 'CrossingListFilterCheckbox')} type='checkbox' defaultChecked={showClosed} onClick={toggleShowClosed}/>
        Closed ({closedCrossingCount})
      </label>
      <label className={classnames(params, 'CrossingListFilterItem')}>
        <input className={classnames(params, 'CrossingListFilterCheckbox')} type='checkbox' defaultChecked={showLongterm} onClick={toggleShowLongterm}/>
        Long Term Closure ({longtermCrossingCount})
      </label>
    </div>

    );
  }
}

export default graphql(statusCountsQuery, {
  options: (ownProps) => ({
    variables: {
      search: ownProps.formattedSearchQuery,
      communityId: (ownProps.currentUser.role !== "floods_super_admin") ? ownProps.currentUser.communityId : null
    }
  })
})(CrossingListStatusCounts);
