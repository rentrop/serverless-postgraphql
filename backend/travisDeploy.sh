psql $PGCON -f ./populateDB/drop.sql
psql $PGCON -f ./populateDB/schema.sql
psql $PGCON -f ./populateDB/data.sql
node ./pgCatalog/buildPgCatalog.js $PGCON floods
sls deploy -v
