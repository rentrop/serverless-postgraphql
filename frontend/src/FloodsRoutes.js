import React, { Component } from 'react';
import { Route } from 'react-router-dom';
import Login from './Login';
import PrivateRoute from './PrivateRoute';
import Header from './Dashboard/Header/Header';
import ManageUsers from './Dashboard/ManageUsersPage/ManageUsers';
import CreateUser from './CreateUser';
import CrossingUpdates from './Dashboard/CrossingUpdatesPage/CrossingUpdates'
import CrossingMap from './Map/CrossingMap';
import NewStatusUpdate from './NewStatusUpdate';
import auth from './services/gqlAuth';
import { graphql } from 'react-apollo';
import gql from 'graphql-tag';

class FloodsRoutes extends Component {
  render() {
    return (
        <div>
          <Route path="/dashboard" render={(props) => <Header currentUser={this.props.data.currentUser} {...props} />} />
          <Route path="/dashboard/map" component={CrossingMap} currentUser={this.props.data.currentUser}/>
          <Route path="/login" component={Login}/>
          <PrivateRoute path="/dashboard/users" component={ManageUsers}
            authenticated={auth.isAuthenticated()}
            authorized={auth.roleAuthorized(['floods_community_admin', 'floods_super_admin'])}
            currentUser={this.props.data.currentUser}
          />
          <PrivateRoute path="/dashboard/crossings" component={CrossingUpdates}
            authenticated={auth.isAuthenticated()}
            authorized={auth.roleAuthorized(['floods_community_editor','floods_community_admin', 'floods_super_admin'])}
            currentUser={this.props.data.currentUser}
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

export default graphql(currentUser)(FloodsRoutes);
