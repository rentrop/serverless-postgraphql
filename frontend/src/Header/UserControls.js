import React, { Component } from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router-dom';
import auth from '../services/gqlAuth'

import cogSvg from '../images/cog.svg';
import './UserControls.css'

const UserControls = withRouter(({ history }) => (
  auth.isAuthenticated() ? (
    <div className="UserControls">
      <img src={cogSvg} alt="Link User Settings" className="Header__settings-icon" />
      <Link to="#">Matthew Porcher</Link>
      &nbsp; | &nbsp;
      <button
        onClick={() => auth.signout(() => history.push('/login'))}
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
));

export default UserControls;
