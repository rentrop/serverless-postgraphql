import React, { Component } from 'react';
import { Link } from 'react-router-dom';

class PublicHomepage extends Component {
  render() {
    return (
      <div>
        <h2>Placeholder for Public Homepage</h2>
        <p>
          <Link to="/dashboard">Admin Dashboard</Link>
        </p>
      </div>
    );
  }
}

export default PublicHomepage;
