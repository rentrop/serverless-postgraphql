import React from 'react';
import auth from 'services/gqlAuth';

import 'components/Dashboard/Header/UserControls.css';

export default class UserControls extends React.Component {
  render() {
    return auth.isAuthenticated ? (
      <div className="UserControls">
        {this.props.currentUser &&
          `${this.props.currentUser.firstName} ${
            this.props.currentUser.lastName
          }`}
        <div
          className="underline UserControls__link"
          onClick={() => auth.signout(() => window.location.reload())}
        >
          Sign out
        </div>
      </div>
    ) : (
      <div className="UserControls">Login</div>
    );
  }
}
