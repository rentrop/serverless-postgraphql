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
  // Setup connection to PostgresDB
  const pgClient = new Client(process.env.PGCON);
  pgClient.connect();

  // Parse PgCatalog
  const PgCatalog = new PgCatalogBuilder.default(PgCat);

  // Set postgraphql options
  // For all options see https://github.com/calebmer/postgraphql/blob/master/docs/library.md
  const options = {
    pgDefaultRole: "floods_anonymous",
    jwtSecret: process.env.JWT_SECRET,
    jwtPgTypeIdentifier: "floods.jwt_token",
    pgDefaultRole: "floods_anonymous",
    disableDefaultMutations: true
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
                  .then( (pgRole) => {
                    graphql(gqlSchema, event.query, null,
                            {[pgClientFromContext.$$pgClient]: pgClient},
                            event.variables, event.operationName)
                            .then((response) => {
                              pgClient.end();
                              cb(null, response)
                            })
                            .catch(() => cb(e));
                  })
                  .then(() => pgClient.query('commit'))
                  .catch( (err) => {
                    pgClient.end();
                    cb(null, {"errors": [err]});
                  });
                })
          } catch(err) {
            pgClient.end();
            cb(null, {"errors": [err]});
          }
        })
      .catch( (err) => {
        pgClient.end();
        cb(null, {"errors": [err]});
      });
    }
