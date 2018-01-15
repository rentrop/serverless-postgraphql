import React from 'react'
import { Link } from 'react-router-dom';
import 'components/Dashboard/Header/Header.css';
import externalLinkSvg from 'images/external-link.svg';

class PublicHeader extends React.Component {

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
        </div>

        <div className="Header__main">
          <h1 className="Header__h1">{"CTXfloods"}</h1>
          <ul className="Header__tabs">
            <li className={pathname.endsWith('map') ? 'Header__tab--active' : 'Header__tab'}>
              <Link to="/map">Map</Link>
            </li>
            <li className={pathname.endsWith('safety') ? 'Header__tab--active' : 'Header__tab'}>
              <Link to="/safety">Flood Safety</Link>
            </li>
            <li className={pathname.endsWith('about') ? 'Header__tab--active' : 'Header__tab'}>
              <Link to="/about">About</Link>
            </li>
          </ul>
        </div>
      </div>
    );
  }

}

export default PublicHeader;
