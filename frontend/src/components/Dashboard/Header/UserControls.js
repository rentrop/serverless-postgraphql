import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router-dom';
import Login from 'components/Dashboard/Header/Login';
import auth from 'services/gqlAuth'

import cogSvg from 'images/cog.svg';
import 'components/Dashboard/Header/UserControls.css'

class UserControlsBase extends React.Component {
  render() {
    return (
      auth.isAuthenticated() ? (
        <div className="UserControls">
          <img src={cogSvg} alt="Link User Settings" className="Header__settings-icon" />
          { this.props.currentUser ?
            <Link to="#">
              {`${this.props.currentUser.firstName} ${this.props.currentUser.lastName}`}
            </Link> : ''
          }
          &nbsp; | &nbsp;
          <button
            className="button-reset link"
            onClick={() => auth.signout(() => window.location.reload())}
          >
            Sign out
          </button>
        </div>
      ) : (
        <div className="UserControls">
          <p>You are not logged in.</p>
          <Login/>
        </div>
      )
    )
  }
}

const UserControls = withRouter(UserControlsBase)

export default UserControls;
