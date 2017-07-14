
var endpoint = 'http://localhost:5000/graphql';

if(process.env.CI) {
  endpoint = process.env.AWS_ENDPOINT;
};

module.exports = {
    endpoint: endpoint
};
