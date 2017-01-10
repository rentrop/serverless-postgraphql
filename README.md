Serverless graphql endpoint for PostgresSQL database using [AWS](https://aws.amazon.com/de/),
[serverless](https://github.com/serverless/serverless) and [postgraphql](https://github.com/calebmer/postgraphql)

# How to use:

## Setup
```
git clone https://github.com/rentrop/serverless-postgraphql
cd serverless-postgraphql
npm install
sls deploy -v
```
☕ Coffeetime:  AWS takes ~10min to setup the Postgres DB

## Populate DB and set endpoints:

* From the result of `sls deploy` take the `pgEndpoint` and insert it in:
  * `package.json`-file in the config of `PGCON` (line 7)
  * `serverless.yml`-file in the environment-variable named `PGCON` (line 21)
* Populate the DB with the data from postgraphql's excelent [forum example](https://github.com/rentrop/postgraphql/tree/master/examples/forum). You need the `psql` cli. On Mac just follow the instructions [here](http://postgresapp.com/) to install it.
  * `npm run populate-schema`
  * `npm run populate-data`
* Get the schema from the database and write it as a json file:
  * `npm run build-schema`

The last command runs a SQL query to get schema-information about the Postgres DB.
The information is written to a JSON-file which is then loaded by the lambda function (handler.js)
to build the graphql-schema.

## Deploy and test

* You can now test your endpint locally using:
  * `sls invoke local -f graphql -p event-auth.json`
  * `sls invoke local -f graphql -p event-query.json` In case this fails:
  Take the returned token from the first invoke and put it into `event-query.json`
* Deploy to Server:
  * `sls deploy function -f graphql` or for a 'full' deployment `sls deploy`

You are all set now. You can now query the resulting endpoint as you wish. Try it e.g. with [the Graphiql Chrome extension](https://chrome.google.com/webstore/detail/chromeiql/fkkiamalmpiidkljmicmjfbieiclmeij)

# TODO:
If the JWT token is invalid or wrongly formatted lambda returns `internal server error`. Why?
At the moment the JWT validation is done within [setupRequestPgClientTransaction.js](https://github.com/calebmer/postgraphql/blob/master/src/postgraphql/http/setupRequestPgClientTransaction.js). This functions throws `httpError` on error.
This can be improved by e.g.:
* Do the JWT-Validation via a [custom authorizer for API Gateway](http://docs.aws.amazon.com/apigateway/latest/developerguide/use-custom-authorizer.html)
* Reimplement the `setupRequestPgClientTransaction`-function to throw 'lambda-errors' instead of the current `throw httpError`
