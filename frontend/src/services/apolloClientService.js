import ApolloClient, { createNetworkInterface } from 'apollo-client';
import { isTokenExpired } from './jwtHelper';

const networkInterface = createNetworkInterface({
  uri: process.env.REACT_APP_AWS_ENDPOINT,
});

networkInterface.use([{
  applyMiddleware(req, next) {
    if (!req.options.headers) {
      req.options.headers = {};  // Create the header object if needed.
    }

    var token = localStorage.getItem('jwt_user_token');

    if (token !== null && token !== "null") {
      if (!isTokenExpired(token)) {
        req.options.headers.Authorization = `Bearer ${token}`;  
      } else {
        req.options.headers = {};
      }
    }
    next();
  },
}]);

const client = new ApolloClient({
  networkInterface,
});

export default client;
