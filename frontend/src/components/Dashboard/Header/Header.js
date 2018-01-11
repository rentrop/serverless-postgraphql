import React from 'react'
import { Link } from 'react-router-dom';
import 'components/Dashboard/Header/Header.css';
import externalLinkSvg from 'images/external-link.svg';
import UserControls from 'components/Dashboard/Header/UserControls';

class Header extends React.Component {

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
          <UserControls {...this.props} />
        </div>

        <div className="Header__main">
          <h1 className="Header__h1">{"CTXfloods Dashboard"}</h1>
          <ul className="Header__tabs">
            <li className={pathname.endsWith('crossings/list') ? 'Header__tab--active' : 'Header__tab'}>
              <Link to="/dashboard/crossings/list">Crossing List</Link>
            </li>
            <li className={pathname.endsWith('crossings/map') ? 'Header__tab--active' : 'Header__tab'}>
              <Link to="/dashboard/crossings/map">Crossing Map</Link>
            </li>
            <li className={pathname.endsWith('crossings/add') ? 'Header__tab--active' : 'Header__tab'}>
              <Link to="/dashboard/crossings/add">Add Crossing</Link>
            </li>
            <li className={pathname.endsWith('users') ? 'Header__tab--active' : 'Header__tab'}>
              <Link to="/dashboard/users">Manage Users</Link>
            </li>
          </ul>
        </div>
      </div>
    );
  }

}

export default Header;
