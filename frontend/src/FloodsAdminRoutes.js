import React, { Component } from 'react';
import { Route } from 'react-router-dom';
import Login from './Login';
import Public from './Public';
import PrivateRoute from './PrivateRoute';
import Header from './Header/Header';
import ManageUsers from './ManageUsersPage/ManageUsers';
import CreateUser from './CreateUser';
import AdminCrossingList from './AdminCrossingList';
import NewStatusUpdate from './NewStatusUpdate';
import auth from './services/gqlAuth';

const Protected = () => <h3>Protected</h3>;

class FloodsAdminRoutes extends Component {
  render() {
    return (
        <div>
          <Route path="/" component={Header}/>
          <Route path="/public" component={Public}/>
          <Route path="/crossings" component={AdminCrossingList}/>
          <Route path="/login" component={Login}/>
          <PrivateRoute path="/dashboard/users" component={ManageUsers}
            authenticated={auth.isAuthenticated()}
            authorized={auth.roleAuthorized(['floods_community_admin', 'floods_super_admin'])}
          />
          <PrivateRoute path="/protected" component={Protected} authenticated={auth.isAuthenticated()}/>
          <PrivateRoute path="/updatestatus" component={NewStatusUpdate} authenticated={auth.isAuthenticated()}/>
          <PrivateRoute path="/createuser" component={CreateUser}
            authenticated={auth.isAuthenticated()}
            authorized={auth.roleAuthorized(['floods_community_admin', 'floods_super_admin'])}
          />
        </div>
    );
  }
}

export default FloodsAdminRoutes;
