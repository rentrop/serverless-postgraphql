import React from 'react';
import { graphql, compose } from 'react-apollo';
import CrossingListItem from './CrossingListItem/CrossingListItem';
import crossingsQuery from './queries/crossingsQuery';
import statusReasonsQuery from './queries/statusReasonsQuery';
import statusDurationsQuery from './queries/statusDurationsQuery';
import './CrossingList.css';

class CrossingList extends React.Component {
  state = {}

  render () {
    if ( !this.props.crossingsQuery ||
          this.props.crossingsQuery.loading ||
         !this.props.statusReasonsQuery ||
          this.props.statusReasonsQuery.loading ||
         !this.props.statusDurationsQuery ||
          this.props.statusDurationsQuery.loading) {
      return (<div>Loading</div>)
    }

    const crossings = this.props.crossingsQuery.allCrossings.nodes;
    const statusReasons = this.props.statusReasonsQuery.allStatusReasons.nodes;
    const statusDurations = this.props.statusDurationsQuery.allStatusDurations.nodes;

    if (crossings == null || statusReasons == null || statusDurations == null) {
      // TODO: add error logging
      return (<div>Error Loading Crossings</div>);
    }

    return (
      <div className='CrossingListContainer'>
        {crossings.map(crossing => 
          <CrossingListItem
            crossing={crossing}
            reasons={statusReasons} 
            durations={statusDurations} />
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
