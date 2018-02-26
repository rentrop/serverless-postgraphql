var endpoint = 'http://localhost:5000/graphql';

if (process.env.USE_AWS_ENDPOINT) {
  endpoint = process.env.POSTGRAPHQL_ENDPOINT;
}

module.exports = {
  endpoint: endpoint,
};
