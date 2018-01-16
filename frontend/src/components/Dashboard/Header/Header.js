import React from 'react'
import { Link } from 'react-router-dom';
import 'components/Dashboard/Header/Header.css';
import UserControls from 'components/Dashboard/Header/UserControls';
import {ContainerQuery} from 'react-container-query';
import classnames from 'classnames';

const containerQuery = {
  'fullsize': { minWidth: 650 },
  'smallsize': { maxWidth: 649 }
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
      {(params) => (

      <div className="Header">
        <div className="flexcontainer">
          
        </div>

        <div className="Header__main">
          <div className={classnames(params, "Header__h1-container")}>
            <h1 className={classnames(params,"Header__h1")}>{"CTXfloods Dashboard"}</h1>
            <UserControls cqParams={params} {...this.props} />
          </div>
          <ul className={classnames(params,"Header__tabs")}>
            <li className={pathname.endsWith('crossings/list') ? 'Header__tab--active' : 'Header__tab'}>
              <Link to="/dashboard/crossings/list">List</Link>
            </li>
            <li className={pathname.endsWith('crossings/map') ? 'Header__tab--active' : 'Header__tab'}>
              <Link to="/dashboard/crossings/map">Map</Link>
            </li>
            <li className={pathname.endsWith('crossings/add') ? 'Header__tab--active' : 'Header__tab'}>
              <Link to="/dashboard/crossings/add">Add</Link>
            </li>
            <li className={pathname.endsWith('crossings/history') ? 'Header__tab--active' : 'Header__tab'}>
              <Link to="/dashboard/crossings/history">History</Link>
            </li>
            <li className={pathname.endsWith('users') ? 'Header__tab--active' : 'Header__tab'}>
              <Link to="/dashboard/users">Users</Link>
            </li>
          </ul>
        </div>
      </div>

      )}
      </ContainerQuery>
    );
  }

}

export default Header;
