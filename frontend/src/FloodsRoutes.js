import React, { Component } from 'react';
import { Route } from 'react-router-dom';
import PrivateRoute from 'PrivateRoute';
import Header from 'Dashboard/Header/Header';
import ManageUsers from 'Dashboard/ManageUsersPage/ManageUsers';

import CrossingMapPage from 'Dashboard/CrossingMapPage/CrossingMapPage';
import CrossingListPage from 'Dashboard/CrossingListPage/CrossingListPage';
import CrossingDetailPage from 'Dashboard/CrossingDetailPage/CrossingDetailPage';

import PublicHomepage from 'PublicHomepage';
import auth from 'services/gqlAuth';
import { graphql } from 'react-apollo';
import gql from 'graphql-tag';

class FloodsRoutes extends Component {
  render() {
    const currentUser = this.props.data && this.props.data.currentUser;

    if (this.props.data && this.props.data.loading) {
      return (<div>Loading</div>)
    }

    return (
      <div className="PageLayout">
        <Route path="/" exact component={PublicHomepage} />
        <Route path="/dashboard" render={(props) => <Header currentUser={currentUser} {...props} />} />
        <PrivateRoute path="/dashboard/users" component={ManageUsers}
          authenticated={auth.isAuthenticated()}
          authorized={auth.roleAuthorized(['floods_community_admin', 'floods_super_admin'])}
          currentUser={currentUser}
        />
        <PrivateRoute path="/dashboard/crossings/map" component={CrossingMapPage}
          authenticated={auth.isAuthenticated()}
          authorized={auth.roleAuthorized(['floods_community_editor','floods_community_admin', 'floods_super_admin'])}
          currentUser={currentUser}
        />
        <PrivateRoute path="/dashboard/crossings/list" component={CrossingListPage}
          authenticated={auth.isAuthenticated()}
          authorized={auth.roleAuthorized(['floods_community_editor','floods_community_admin', 'floods_super_admin'])}
          currentUser={currentUser}
        />
        <PrivateRoute path="/dashboard/crossing/:id" component={CrossingDetailPage}
          authenticated={auth.isAuthenticated()}
          authorized={auth.roleAuthorized(['floods_community_editor','floods_community_admin', 'floods_super_admin'])}
          currentUser={currentUser}
        />

      </div>
    );
  }
}

const currentUser = gql`
  {
    currentUser {
      id
      communityId
      communityByCommunityId {
        viewportgeojson
      }
      role
      firstName
      lastName
    }
  }
`

export default graphql(currentUser, {
  skip: (ownProps) => !auth.isAuthenticated()
})(FloodsRoutes);
