'use strict';
const fs = require('fs');
const PgCatalogBuilder = require('postgraphql/build/postgres/introspection/PgCatalog');
const createPostGraphQLSchema = require('postgraphql/build/postgraphql/schema/createPostGraphQLSchema');
const graphql = require('graphql').graphql;
const Client = require('pg').Client;
const pgClientFromContext = require("postgraphql/build/postgres/inventory/pgClientFromContext");
const setupRequestPgClientTransaction = require("postgraphql/build/postgraphql/http/setupRequestPgClientTransaction");
const PgCat = JSON.parse(fs.readFileSync('pgCatalog/pgCatalog.json', 'utf8'));

module.exports.graphql = (event, context, cb) => {
  if(event.headers.Authorization !== null){
    event.headers.authorization = event.headers.Authorization
  }
  let gqlParam
  try {
    gqlParam = JSON.parse(event.body);
  } catch (err){
    cb(err)
  }

  // Setup connection to PostgresDB
  const pgClient = new Client(process.env.PGCON);
  pgClient.connect();

  // Parse PgCatalog
  const PgCatalog = new PgCatalogBuilder.default(PgCat);

  // Set postgraphql options
  // For all options see https://github.com/calebmer/postgraphql/blob/master/docs/library.md
  const options = {
    pgDefaultRole: "forum_example_anonymous",
    jwtSecret: process.env.JWT_SECRET,
    jwtPgTypeIdentifier: "forum_example.jwt_token",
    pgDefaultRole: "forum_example_anonymous"
  }
  let gqlSchema
  createPostGraphQLSchema.default(pgClient, PgCatalog, options)
      .then((schema) => {
        try {
          gqlSchema = schema;
          // To be honest i am not 100% that the following
          // proppery uses 'begin' ... 'commit'
          pgClient.query('begin').then( () => {
            setupRequestPgClientTransaction.default(event, pgClient, {
                    jwtSecret: options.jwtSecret,
                    pgDefaultRole: options.pgDefaultRole
                  })
                  .then((pgRole) => {
                    graphql(gqlSchema, gqlParam.query, null,
                            {[pgClientFromContext.$$pgClient]: pgClient},
                            gqlParam.variables, gqlParam.operationName)
                            .then((response) => {
                              pgClient.end();
                              cb(null, {statusCode: 200,  body: JSON.stringify(response)})
                            })
                            .catch(() => cb(e))
                  })
                  .then(() => pgClient.query('commit'))
                  .catch(() => cb(e));
                })
          } catch(error) {
            pgClient.end(); cb(e);
          }
        })
      .catch(e => {pgClient.end(); cb(e)});
    }
