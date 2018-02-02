import React, { Component } from 'react';
import CrossingListItem from 'components/Dashboard/CrossingListPage/CrossingListItem/CrossingListItem';
import PublicCrossingListItem from 'components/Public/CrossingListItem/PublicCrossingListItem';
import { graphql, compose } from 'react-apollo';
import gql from 'graphql-tag';
import statusUpdateFragment from 'components/Dashboard/CrossingListPage/queries/statusUpdateFragment';
import statusReasonsQuery from 'components/Dashboard/CrossingListPage/queries/statusReasonsQuery';
import statusDurationsQuery from 'components/Dashboard/CrossingListPage/queries/statusDurationsQuery';
import crossingFragment from 'components/Dashboard/CrossingListPage/queries/crossingFragment';

class SelectedCrossingContainer extends Component {

  render() {
    const { currentUser, selectCrossing } = this.props;

    const isLoading = (
      !this.props.data ||
       this.props.data.loading ||
      !this.props.statusReasonsQuery ||
       this.props.statusReasonsQuery.loading ||
      !this.props.statusDurationsQuery ||
       this.props.statusDurationsQuery.loading ||
      !this.props.data.crossingById
    );

    if ( isLoading ) { return null };

    const crossing = this.props.data.crossingById;
    const statusReasons = this.props.statusReasonsQuery.allStatusReasons.nodes;
    const statusDurations = this.props.statusDurationsQuery.allStatusDurations.nodes;


    return (
        currentUser ? 
          <CrossingListItem
            key={crossing.id}
            crossing={crossing}
            reasons={statusReasons} 
            durations={statusDurations}
            currentUser={currentUser}
            listOrMap="map"
            selectCrossing={selectCrossing} /> :
          <PublicCrossingListItem
            key={crossing.id}
            crossing={crossing}
            reasons={statusReasons} 
            durations={statusDurations} />
    );
  }
}

const crossingQuery = gql`
  query crossingById($crossingId:Int!) {
    crossingById(id:$crossingId) {
      id
      ...crossingInfo
      ...statusUpdateInfo  
    }
  }
  ${crossingFragment}
  ${statusUpdateFragment}
`;

export default compose(
  graphql(crossingQuery, {
    options: (ownProps) => ({
      variables: {
        crossingId: ownProps.crossingId
      }
    })
  }),
  graphql(statusReasonsQuery, { name: 'statusReasonsQuery' }),
  graphql(statusDurationsQuery, { name: 'statusDurationsQuery' })
)(SelectedCrossingContainer);
