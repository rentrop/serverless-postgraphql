import React from 'react'
import { Link } from 'react-router-dom';
import './Header.css';
import externalLinkSvg from '../images/external-link.svg';

import AuthButton from '../AuthButton';
import UserControls from './UserControls';

class Header extends React.Component {

  getTitleByPathname(pathname) {
    if (pathname.startsWith("/dashboard")) {
      return "CTXfloods Dashboard";
    } else {
      return "CTXfloods";
    }
  }

  render() {
    const { pathname } = this.props.location;
    return (
      <div className="Header">
        <div className="flexcontainer">
          <span className="Header__small-text">
            This site is a work in progress. If you can't find what you need, visit
            &nbsp;
            <a href="#whatever">placeholder.gov</a>
            &nbsp;
            <img src={externalLinkSvg} alt="External Link" className="Header__link-icon" />.
          </span>
          <UserControls/>
        </div>

        <div className="Header__main">
          <h1 className="Header__h1">{this.getTitleByPathname(pathname)}</h1>
          <ul className="Header__tabs">
            <li className="Header__tab">
              <Link to="/updatestatus">Crossing Updates</Link>
            </li>
            <li className="Header__tab">
              <Link to="#">Add Crossing</Link>
            </li>
            <li className="Header__tab--active">
              <Link to="/dashboard/users">Manage Users</Link>
            </li>
          </ul>
        </div>
      </div>
    );
  }

}

export default Header;
