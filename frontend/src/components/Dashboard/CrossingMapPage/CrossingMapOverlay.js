import React, { Component } from 'react';
import CrossingListItem from 'components/Dashboard/CrossingListPage/CrossingListItem/CrossingListItem';
import { graphql, compose } from 'react-apollo';
import gql from 'graphql-tag';
import FontAwesome from 'react-fontawesome';
import statusUpdateFragment from 'components/Dashboard/CrossingListPage/queries/statusUpdateFragment';
import statusReasonsQuery from 'components/Dashboard/CrossingListPage/queries/statusReasonsQuery';
import statusDurationsQuery from 'components/Dashboard/CrossingListPage/queries/statusDurationsQuery';
import crossingFragment from 'components/Dashboard/CrossingListPage/queries/crossingFragment';
import 'components/Dashboard/CrossingMapPage/CrossingMapPage.css';
import {ContainerQuery} from 'react-container-query';
import classnames from 'classnames';

const containerQuery = {
  'fullsize': { minWidth: 380 },
  'smallsize': { maxWidth: 379 }
};

class CrossingMapOverlay extends Component {

  render() {
    const { crossingId, currentUser, selectCrossing } = this.props;

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
      <div style={{"width": "100%"}}>
      <ContainerQuery query={containerQuery}>
        {(params) => (
          <div className="CrossingMapOverlay">
            { crossingId ?
              (
                <div className={classnames(params, "CrossingMapOverlay__detail-container")}>
                  <div className="CrossingMapOverlay__close-button" onClick={() => selectCrossing(null, null)}>
                    <FontAwesome name='times' />
                  </div>
                  <CrossingListItem
                    key={crossing.id}
                    crossing={crossing}
                    reasons={statusReasons} 
                    durations={statusDurations}
                    currentUser={currentUser}
                    listOrMap="map"
                    selectCrossing={selectCrossing} />
                </div>
              ) : null
            }
          </div>
        )}
      </ContainerQuery>
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
)(CrossingMapOverlay);
