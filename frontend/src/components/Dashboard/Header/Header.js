import React from 'react';
import { Link } from 'react-router-dom';
import classnames from 'classnames';
import { ContainerQuery } from 'react-container-query';

import TopBar from 'components/Shared/TopBar';
import UserControls from 'components/Dashboard/Header/UserControls';

import 'components/Dashboard/Header/Header.css';

const containerQuery = {
  fullsize: { minWidth: 650 },
  smallsize: { maxWidth: 649 },
};

class Header extends React.Component {
  componentDidMount() {
    const { pathname } = this.props.location;
    document.title = `CTXFloods Dashboard - ${pathname}`;
  }

  render() {
    const { pathname } = this.props.location;
    return (
      <ContainerQuery query={containerQuery}>
        {params => (
          <div>
            <TopBar>
              <UserControls {...this.props} />
            </TopBar>
            <div className="Header">
              <div className="flexcontainer" />

              <div className="Header__main">
                <div className={classnames(params, 'Header__h1-container')}>
                  <h1 className={classnames(params, 'Header__h1')}>
                    {'CTXfloods Dashboard'}
                  </h1>
                </div>
                <ul className={classnames(params, 'Header__tabs')}>
                  <li
                    className={
                      pathname.endsWith('crossings/list')
                        ? 'Header__tab--active'
                        : 'Header__tab'
                    }
                  >
                    <Link to="/dashboard/crossings/list">Crossings List</Link>
                  </li>
                  <li
                    className={
                      pathname.endsWith('crossings/map')
                        ? 'Header__tab--active'
                        : 'Header__tab'
                    }
                  >
                    <Link to="/dashboard/crossings/map">Crossings Map</Link>
                  </li>
                  <li
                    className={
                      pathname.endsWith('crossings/add')
                        ? 'Header__tab--active'
                        : 'Header__tab'
                    }
                  >
                    <Link to="/dashboard/crossings/add">Add Crossing</Link>
                  </li>
                  <li
                    className={
                      pathname.endsWith('crossings/history')
                        ? 'Header__tab--active'
                        : 'Header__tab'
                    }
                  >
                    <Link to="/dashboard/crossings/history">History</Link>
                  </li>
                  <li
                    className={
                      pathname.endsWith('users')
                        ? 'Header__tab--active'
                        : 'Header__tab'
                    }
                  >
                    <Link to="/dashboard/users">Manage Users</Link>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        )}
      </ContainerQuery>
    );
  }
}

export default Header;
