import React, { Component } from 'react';
import {
  Route,
  Redirect
} from 'react-router-dom';

class PrivateRoute extends Component {
  render() {
    const { component: Component, authenticated, authorized, ...rest } = this.props;

    return (
      <Route {...rest} render={props => (
        authenticated ? (
          authorized ? (
            <Component {...props} {...this.props} />
          ) : (
            <div>Not Authorized</div>
          )
        ) : (
          <div>Not Authenticated</div>
        )
      )}/>
    );
  }
}

export default PrivateRoute;
