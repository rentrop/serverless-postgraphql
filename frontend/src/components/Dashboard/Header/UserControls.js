import React from 'react';
import { Link } from 'react-router-dom';
import auth from 'services/gqlAuth';

import 'components/Dashboard/Header/UserControls.css';

export default class UserControls extends React.Component {
  render() {
    return auth.isAuthenticated ? (
      <div className="UserControls">
        {this.props.currentUser && (
          <Link className="UserControls__link" to="#">
            {`${this.props.currentUser.firstName} ${
              this.props.currentUser.lastName
            }`}
          </Link>
        )}
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
