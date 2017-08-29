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
            <div>NOT AUTHORIZED</div>
          )
        ) : (
          <Redirect to={{
            pathname: '/login',
            state: { from: props.location }
          }}/>
        )
      )}/>
    );
  }
}

export default PrivateRoute;
