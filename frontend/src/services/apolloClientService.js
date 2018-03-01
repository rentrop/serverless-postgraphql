import ApolloClient from 'apollo-client';
import { ApolloLink, concat } from 'apollo-link';
import { createHttpLink } from 'apollo-link-http';
import { InMemoryCache } from 'apollo-cache-inmemory';

import { isTokenExpired } from './jwtHelper';

const httpLink = createHttpLink({
  uri: process.env.REACT_APP_AWS_ENDPOINT,
});

const jwtMiddleware = new ApolloLink((operation, forward) => {
  const token = localStorage.getItem('jwt_user_token');

  if (token !== null && token !== 'null' && !isTokenExpired(token)) {
    operation.setContext({
      headers: {
        authorization: `Bearer ${token}`,
      },
    });
  }

  return forward(operation);
});

const client = new ApolloClient({
  link: concat(jwtMiddleware, httpLink),
  cache: new InMemoryCache(),
});

export default client;
