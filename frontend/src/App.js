import React, { Component } from 'react';
import { BrowserRouter as Router } from 'react-router-dom';
import FloodsRoutes from 'FloodsRoutes';
import client from 'services/apolloClientService';
import { ApolloProvider } from 'react-apollo';

class App extends Component {
  render() {
    return (
      <ApolloProvider client={client}>
        <Router>
          <FloodsRoutes />
        </Router>
      </ApolloProvider>
    );
  }
}

export default App;
