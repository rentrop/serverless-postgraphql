import React, { Component } from 'react';
import { Link } from 'react-router-dom';

import 'Dashboard/ManageUsersPage/LinkButton.css';

class LinkButton extends Component {

  render() {
    return (
      <Link to={this.props.url} className="LinkButton">
        {this.props.text}
      </Link>
    );
  }

}

export default LinkButton;
