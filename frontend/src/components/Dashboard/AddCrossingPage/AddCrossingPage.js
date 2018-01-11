import React, { Component } from 'react';
import { graphql, compose } from 'react-apollo';
import gql from 'graphql-tag';
import AddCrossingMap from 'components/Map/AddCrossingMap';
import CrossingDetails from 'components/Dashboard/CrossingDetailPage/CrossingDetails';
import CrossingStatusHistory from 'components/Dashboard/CrossingStatusHistory/CrossingStatusHistory';
import { ContainerQuery } from 'react-container-query';
import classnames from 'classnames';
import { LARGE_ITEM_MIN_WIDTH } from 'constants/containerQueryConstants';
import 'components/Dashboard/CrossingDetailPage/CrossingDetailPage.css';
import formatcoords from 'formatcoords';

const containerQuery = {
  'CrossingDetails__container--lg': {
    minWidth: LARGE_ITEM_MIN_WIDTH,
  }
};

class AddCrossingPage extends Component {
  state = {
    crossingCoordinates: [-97.46, 30.96]
  }

  crossingMoved = (e) => {
    const coords = [e.lngLat.lng, e.lngLat.lat];
    this.setState({ crossingCoordinates: coords });
  }

  render() {
    const crossing = {
      name: null,
      description: null,
      humanCoordinates: formatcoords(this.state.crossingCoordinates, true).format({decimalPlaces: 3}),
      lng: this.state.crossingCoordinates[0],
      lat: this.state.crossingCoordinates[1]
    };

    const communities = [
      this.props.currentUser.communityByCommunityId
    ];

    return (
      <ContainerQuery query={containerQuery}>
        {(params) => (
          <div className="AddCrossingPage">
            <div className={classnames(params, "CrossingDetails__container mlv2--b")}>
              <AddCrossingMap crossingCoordinates={this.state.crossingCoordinates} crossingMoved={this.crossingMoved}/>
              <CrossingDetails crossing={crossing} communities={communities} addMode={true} currentUser={this.props.currentUser}/>
            </div>
          </div>
        )}
      </ContainerQuery>
    );
  }
}

export default AddCrossingPage;
