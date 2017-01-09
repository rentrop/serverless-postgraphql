'use strict';
const fs = require('fs');
const PgCatalogBuilder = require('postgraphql/build/postgres/introspection/PgCatalog');
const createPostGraphQLSchema = require('postgraphql/build/postgraphql/schema/createPostGraphQLSchema');
const graphql = require('graphql').graphql;
const Client = require('pg').Client;
const pgClientFromContext_1 = require("postgraphql/build/postgres/inventory/pgClientFromContext");
const PgCat = JSON.parse(fs.readFileSync('pgCatalog/pgCatalog.json', 'utf8'));

module.exports.graphql = (event, context, cb) => {
  var pgClient = new Client(process.env.PGCON);
  pgClient.connect();
  const PgCatalog = new PgCatalogBuilder.default(PgCat);
  createPostGraphQLSchema.default(pgClient, PgCatalog, {
        jwtSecret: process.env.JWT_SECRET
      })
      .then((gqlSchema) => {
        const gqlParam = JSON.parse(event.body);
        graphql(gqlSchema, gqlParam.query, null, {[pgClientFromContext_1.$$pgClient]: pgClient}, gqlParam.variables, gqlParam.operationName)
        .then((response) => {
          pgClient.end()
          cb(null, {statusCode: 200,  body: JSON.stringify(response)})
        })
        .catch(e => {pgClient.end(); cb(e)});
      })
      .catch(e => {pgClient.end(); cb(e)});
    }
