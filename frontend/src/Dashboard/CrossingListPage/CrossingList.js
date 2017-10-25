import React from 'react';
import { graphql, compose } from 'react-apollo';
import CrossingListItem from './CrossingListItem/CrossingListItem';
import crossingsQuery from './queries/crossingsQuery';
import statusReasonsQuery from './queries/statusReasonsQuery';
import statusDurationsQuery from './queries/statusDurationsQuery';
import './CrossingList.css';
import * as statusConstants from './CrossingListItem/StatusConstants';
import classnames from 'classnames';

class CrossingList extends React.Component {
  state = {}

  shouldHideCrossing (crossing, showOpen, showClosed, showCaution, showLongterm) {
      return ( 
        crossing.latestStatusId == statusConstants.OPEN && !showOpen ||
        crossing.latestStatusId == statusConstants.CLOSED && !showClosed ||
        crossing.latestStatusId == statusConstants.CAUTION && !showCaution ||
        crossing.latestStatusId == statusConstants.LONGTERM && !showLongterm);
  }

  render () {
    if ( !this.props.crossingsQuery ||
          this.props.crossingsQuery.loading ||
         !this.props.statusReasonsQuery ||
          this.props.statusReasonsQuery.loading ||
         !this.props.statusDurationsQuery ||
          this.props.statusDurationsQuery.loading) {
      return (<div>Loading</div>)
    }

    const { showOpen, showClosed, showCaution, showLongterm, sortByUpdatedAsc } = this.props;

    const crossings = this.props.crossingsQuery.allCrossings.nodes.slice();

    const statusReasons = this.props.statusReasonsQuery.allStatusReasons.nodes;
    const statusDurations = this.props.statusDurationsQuery.allStatusDurations.nodes;

    if (crossings == null || statusReasons == null || statusDurations == null) {
      // TODO: add error logging
      return (<div>Error Loading Crossings</div>);
    }

    crossings.sort((c1, c2) => {
      const createdAt1 = c1.statusUpdateByLatestStatusUpdateId.createdAt;
      const createdAt2 = c2.statusUpdateByLatestStatusUpdateId.createdAt;

      return sortByUpdatedAsc ?
              (createdAt1 > createdAt2 ? 1 : -1) :
              (createdAt2 > createdAt1 ? 1 : -1);
    });

    return (
      <div className='CrossingListContainer'>
        {crossings.map(crossing => 
          <CrossingListItem
            key={crossing.id}
            crossing={crossing}
            reasons={statusReasons} 
            durations={statusDurations}
            hidden={this.shouldHideCrossing(crossing, showOpen, showClosed, showCaution, showLongterm)} />
        )}
      </div>
    );
  }
}

export default compose(
  graphql(crossingsQuery, { name: 'crossingsQuery' }),
  graphql(statusReasonsQuery, { name: 'statusReasonsQuery' }),
  graphql(statusDurationsQuery, { name: 'statusDurationsQuery' })
)(CrossingList);
