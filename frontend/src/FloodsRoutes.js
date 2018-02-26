import React, { Component } from 'react';
import { Route, Redirect, Switch } from 'react-router-dom';
import PrivateRoute from 'PrivateRoute';
import Header from 'components/Dashboard/Header/Header';
import ManageUsers from 'components/Dashboard/ManageUsersPage/ManageUsers';
import LoginPage from 'components/Dashboard/LoginPage/LoginPage';

import CrossingMapPage from 'components/Shared/CrossingMapPage/CrossingMapPage';
import CrossingListPage from 'components/Dashboard/CrossingListPage/CrossingListPage';
import CrossingDetailPage from 'components/Dashboard/CrossingDetailPage/CrossingDetailPage';
import AddCrossingPage from 'components/Dashboard/AddCrossingPage/AddCrossingPage';
import CrossingStatusHistoryPage from 'components/Dashboard/CrossingStatusHistoryPage/CrossingStatusHistoryPage';

import PublicHeader from 'components/Public/Header/PublicHeader';

import auth from 'services/gqlAuth';
import { graphql } from 'react-apollo';
import gql from 'graphql-tag';

class FloodsRoutes extends Component {
  render() {
    const currentUser = this.props.data && this.props.data.currentUser;

    if (this.props.data && this.props.data.loading) {
      return <div>Loading</div>;
    }

    return (
      <div className="PageLayout">
        <Route path="/" exact render={() => <Redirect to="/map" />} />
        <Route
          path="/dashboard"
          exact
          render={() => <Redirect to="/dashboard/crossings/list" />}
        />

        <Switch>
          <Route
            path="/dashboard"
            render={props =>
              currentUser ? (
                <Header currentUser={currentUser} {...props} />
              ) : (
                <LoginPage />
              )
            }
          />
          <Route component={PublicHeader} />
        </Switch>

        <Route path="/map" component={CrossingMapPage} />

        <PrivateRoute
          path="/dashboard/users"
          component={ManageUsers}
          authenticated={auth.isAuthenticated()}
          authorized={auth.roleAuthorized([
            'floods_community_admin',
            'floods_super_admin',
          ])}
          currentUser={currentUser}
        />
        <PrivateRoute
          path="/dashboard/crossings/map"
          component={CrossingMapPage}
          authenticated={auth.isAuthenticated()}
          authorized={auth.roleAuthorized([
            'floods_community_editor',
            'floods_community_admin',
            'floods_super_admin',
          ])}
          currentUser={currentUser}
        />
        <PrivateRoute
          path="/dashboard/crossings/list"
          component={CrossingListPage}
          authenticated={auth.isAuthenticated()}
          authorized={auth.roleAuthorized([
            'floods_community_editor',
            'floods_community_admin',
            'floods_super_admin',
          ])}
          currentUser={currentUser}
        />
        <PrivateRoute
          path="/dashboard/crossing/:id"
          component={CrossingDetailPage}
          authenticated={auth.isAuthenticated()}
          authorized={auth.roleAuthorized([
            'floods_community_editor',
            'floods_community_admin',
            'floods_super_admin',
          ])}
          currentUser={currentUser}
        />
        <PrivateRoute
          path="/dashboard/crossings/add"
          component={AddCrossingPage}
          authenticated={auth.isAuthenticated()}
          authorized={auth.roleAuthorized([
            'floods_community_admin',
            'floods_super_admin',
          ])}
          currentUser={currentUser}
        />
        <PrivateRoute
          path="/dashboard/crossings/history"
          component={CrossingStatusHistoryPage}
          authenticated={auth.isAuthenticated()}
          authorized={auth.roleAuthorized([
            'floods_community_admin',
            'floods_super_admin',
          ])}
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
        id
        viewportgeojson
        name
      }
      role
      firstName
      lastName
    }
  }
`;

export default graphql(currentUser, {
  skip: ownProps => !auth.isAuthenticated(),
})(FloodsRoutes);
