const fs = require('fs');
const Client = require('pg').Client;
const minify = require('pg-minify');

var client = new Client(process.argv[2]);
client.connect();

fs.readFile('./node_modules/postgraphql/resources/introspection-query.sql', (err,data) => {
  client.query({
    name: 'introspectionQuery',
    text: minify(data.toString()),
    values: [[process.argv[3]]]
  })
  .then(res => {
    const out = res.rows.map(function (x) { return(x.object); });
    fs.writeFile('./pgCatalog/pgCatalog.json', JSON.stringify(out), (err) => {
      if (err) { console.log(err); }
      console.log('Wrote pgCatalog to /pgCatalog/pgCatalog.json')
    })
  })
  .then(() => client.end())
  .catch(err => console.log(err))
})
