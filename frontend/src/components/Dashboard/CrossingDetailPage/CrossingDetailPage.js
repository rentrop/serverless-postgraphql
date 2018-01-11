import React, { Component } from 'react';
import { graphql, compose } from 'react-apollo';
import gql from 'graphql-tag';
import CrossingStaticMap from 'components/Map/CrossingStaticMap';
import CrossingDetails from 'components/Dashboard/CrossingDetailPage/CrossingDetails';
import CrossingStatusHistory from 'components/Dashboard/CrossingStatusHistory/CrossingStatusHistory';
import statusHistoryQuery from 'components/Dashboard/CrossingListPage/queries/statusHistoryQuery';
import { ContainerQuery } from 'react-container-query';
import classnames from 'classnames';
import { LARGE_ITEM_MIN_WIDTH } from 'constants/containerQueryConstants';
import 'components/Dashboard/CrossingDetailPage/CrossingDetailPage.css';

const containerQuery = {
  'CrossingDetails__container--lg': {
    minWidth: LARGE_ITEM_MIN_WIDTH,
  }
};

class CrossingDetailPage extends Component {
  render() {
    const isLoading = (
      !this.props.CrossingByIdQuery ||
       this.props.CrossingByIdQuery.loading ||
      !this.props.StatusHistoryQuery ||
       this.props.StatusHistoryQuery.loading
    );

    if ( isLoading ) { return (<div>Loading</div>) };

    const crossing = this.props.CrossingByIdQuery.crossingById;
    const communities = crossing.communityCrossingsByCrossingId.nodes.map(n => n.communityByCommunityId);
    const history = this.props.StatusHistoryQuery.allStatusUpdates.nodes;

    return (
      <ContainerQuery query={containerQuery}>
        {(params) => (
          <div className="CrossingDetailPage">
            <div className={classnames(params, "CrossingDetails__container mlv2--b")}>
              <CrossingStaticMap crossing={crossing}/>
              <CrossingDetails crossing={crossing} communities={communities} addMode={false}/>
            </div>
            <CrossingStatusHistory crossingId={crossing.id} history={history}/>
          </div>
        )}
      </ContainerQuery>
    );
  }

}

const CrossingByIdQuery = gql`
  query crossingById($crossingId:Int!) {
    crossingById(id:$crossingId) {
      id
      name
      geojson
      humanCoordinates
      humanAddress
      description
      statusByLatestStatusId {
        id
        name
      }
      communityCrossingsByCrossingId {
        nodes {
          communityByCommunityId {
            id
            name
          }
        }
      }
    }
  }
`;

export default compose(
  graphql(CrossingByIdQuery, {
    name: 'CrossingByIdQuery',
    options: (ownProps) => ({
      variables: {
        crossingId: ownProps.match.params.id
      }
    })
  }),
  graphql(statusHistoryQuery, {
    name: 'StatusHistoryQuery',
    options: (ownProps) => ({
      variables: {
        crossingId: ownProps.match.params.id
      }
    })
  })
)(CrossingDetailPage);
