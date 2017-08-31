import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router-dom';
import auth from '../../services/gqlAuth'

import cogSvg from '../../images/cog.svg';
import './UserControls.css'

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
            onClick={() => auth.signout(() => this.props.history.push('/login'))}
            className="button-reset link"
          >
            Sign out
          </button>
        </div>
      ) : (
        <div className="UserControls">
          <p>You are not logged in.</p>
        </div>
      )
    )
  }
}

const UserControls = withRouter(UserControlsBase)

export default UserControls;
