import React, { Component } from 'react';
import {
  Route,
  Link,
} from 'react-router-dom';
import Login from './Login';
import Public from './Public';
import PrivateRoute from './PrivateRoute';
import AuthButton from './AuthButton';
import CreateUser from './CreateUser';
import CrossingList from './CrossingList';
import UserList from './UserList';
import NewStatusUpdate from './NewStatusUpdate';
import auth from './services/gqlAuth';

const Protected = () => <h3>Protected</h3>;

class FloodsAdminRoutes extends Component {
  render() {
    return (
        <div>
          <AuthButton/>
          <ul>
            <li><Link to="/public">Public Page</Link></li>
            <li><Link to="/crossings">List Crossings (Public)</Link></li>
            <li><Link to="/users">List Users</Link></li>
            <li><Link to="/protected">Protected Page</Link></li>
            <li><Link to="/createuser">Create User (Protected)</Link></li>
            <li><Link to="/updatestatus">Update Crossing Status (Protected)</Link></li>
          </ul>
          <Route path="/public" component={Public}/>
          <Route path="/crossings" component={CrossingList}/>
          <Route path="/login" component={Login}/>
          <Route path="/users" component={UserList}/>
          <PrivateRoute path="/protected" component={Protected} authenticated={auth.isAuthenticated()}/>
          <PrivateRoute path="/updatestatus" component={NewStatusUpdate} authenticated={auth.isAuthenticated()}/>
          <PrivateRoute path="/createuser" component={CreateUser} authenticated={auth.isAuthenticated()}/>
        </div>
    );
  }
}

export default FloodsAdminRoutes;
