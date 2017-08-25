import React, { Component } from 'react';
import { BrowserRouter as Router } from 'react-router-dom';
import FloodsAdminRoutes from './FloodsAdminRoutes';
import client from './services/apolloClientService';
import { ApolloProvider } from 'react-apollo';

class App extends Component {
  render() {
    return (
      <ApolloProvider client={client}>
        <Router>
          <FloodsAdminRoutes/>
        </Router>
      </ApolloProvider>
    );
  }
}

export default App;
