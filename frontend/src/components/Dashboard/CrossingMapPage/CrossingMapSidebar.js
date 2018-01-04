import React, { Component } from 'react';
import CrossingListItem from 'components/Dashboard/CrossingListPage/CrossingListItem/CrossingListItem';
import { graphql, compose } from 'react-apollo';
import gql from 'graphql-tag';
import statusUpdateFragment from 'components/Dashboard/CrossingListPage/queries/statusUpdateFragment';
import statusReasonsQuery from 'components/Dashboard/CrossingListPage/queries/statusReasonsQuery';
import statusDurationsQuery from 'components/Dashboard/CrossingListPage/queries/statusDurationsQuery';
import crossingFragment from 'components/Dashboard/CrossingListPage/queries/crossingFragment';
import 'components/Dashboard/CrossingMapPage/CrossingMapPage.css';

class CrossingMapSidebar extends Component {

  render() {
    const { crossingId, hideSidebar, currentUser } = this.props;

    const isLoading = (
      !this.props.data ||
       this.props.data.loading
    );

    if ( isLoading ) { return (<div>Loading</div>) };

    const crossing = this.props.data.crossingById;
    const statusReasons = this.props.statusReasonsQuery.allStatusReasons.nodes;
    const statusDurations = this.props.statusDurationsQuery.allStatusDurations.nodes;


    return (
      <div className="CrossingMapSidebar">
        <div onClick={() => hideSidebar(true)}> hide sidebar </div>
        { crossingId ?
          (
            <div className="CrossingMapSidebar__detail-container">
              <CrossingListItem
                key={crossing.id}
                crossing={crossing}
                reasons={statusReasons} 
                durations={statusDurations}
                currentUser={currentUser} />
            </div>
          ) :
          (<div>NOPE</div>)
        }
        
      </div>
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
)(CrossingMapSidebar);
