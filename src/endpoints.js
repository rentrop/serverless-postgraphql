
var endpoint = 'http://localhost:5000/graphql';

if(process.env.USE_AWS_ENDPOINT) {
  endpoint = process.env.AWS_ENDPOINT;
};

module.exports = {
    endpoint: endpoint
};
