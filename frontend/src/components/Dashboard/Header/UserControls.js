import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router-dom';
import auth from 'services/gqlAuth';
import classnames from 'classnames';
import FontAwesome from 'react-fontawesome';

import 'components/Dashboard/Header/UserControls.css';

console.log(React.Fragment)

class UserControlsBase extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      showControls: false,
    };
  }

  toggleControls = () => {
    this.setState({ showControls: !this.state.showControls });
  };

  render() {
    return auth.isAuthenticated() ? (
      <div className={classnames(this.props.cqParams, 'UserControls')}>
        <div className="Header__banner-message">
          This site is a work in progress. If you don’t find what you need,
          visit
          <a
            href="https://placeholder.gov"
            target="_blank"
            rel="noopener noreferrer"
          >
            placeholder.gov
          </a>.
        </div>

        <FontAwesome
          name="cog"
          ariaLabel="User Settings"
          onClick={this.toggleControls}
          className="Header__settings-icon"
        />
        {this.state.showControls && (
          <React.Fragment>
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
          </React.Fragment>
        )}
      </div>
    ) : null;
  }
}

const UserControls = withRouter(UserControlsBase);

export default UserControls;
