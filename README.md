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
* `sls deploy`
You are all set now. You can now query the resulting endpoint as you wish. Try it e.g. with [the Graphiql Chrome extension](https://chrome.google.com/webstore/detail/chromeiql/fkkiamalmpiidkljmicmjfbieiclmeij)

## Example Query:
```
mutation {
  authenticate(input: {email: "spowell0@noaa.gov", password: "iFbWWlc"}) {
    clientMutationId
    jwtToken {
      role
      personId
    }
  }
}
```
