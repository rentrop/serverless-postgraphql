Serverless graphql endpoint for PostgresSQL database using [AWS](https://aws.amazon.com/de/),
[serverless](https://github.com/serverless/serverless)
and [postgraphql](https://github.com/calebmer/postgraphql)

* [Short Intro to postgraphql](https://www.youtube.com/watch?v=b3pwlCDy6vY)

# How to use:

## Setup
💾 Install [Serverless](https://github.com/serverless/serverless#quick-start)

👯 Clone the repo
```
git clone https://github.com/rentrop/serverless-postgraphql
cd serverless-postgraphql
```

💾 Install
```
npm install
```

🚀 Rebuild and Deploy
```
npm run rebuild-and-deploy
```

☕ Coffeetime:  AWS takes ~10min to setup the Postgres DB

* From the result of the serverless deployment take the `pgEndpoint` and insert it in:
  * `package.json`-file in the config of `PGCON` (line 7)
  * `serverless.yml`-file in the environment-variable named `PGCON` (line 21)

🚀 Rebuild and Deploy Again
```
npm run rebuild-and-deploy
```

You are all set now. You can now query the resulting endpoint as you wish via __POST__ and __GET__.

One example to authenticate a user would be:
```
mutation {
  authenticate(input: {email: "spowell0@noaa.gov", password: "iFbWWlc"}) {
    jwtToken
  }
}
```

You can try this by entering the following in your browser:
 > your-url/dev/graphql?query=mutation%20%7B%0Aauthenticate%28input%3A%20%7Bemail%3A%20%22spowell0%40noaa.gov%22%2C%20password%3A%20%22iFbWWlc%22%7D%29%20%7B%0AjwtToken%0A%7D%0A%7D

For most other queries you need to be authorised. Authorization in postgraphql is done via the jwtToken. Set this in your following requests as `Authorization` header:

```
Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhIjoxLCJiIjoyLCJjIjozfQ.hxhGCCCmGV9nT1slief1WgEsOsfdnlVizNrODxfh1M8
```

* Here you can find an [in-depth explainaition](https://github.com/calebmer/postgraphql/blob/master/examples/forum/TUTORIAL.md#authentication-and-authorization)
* Gist on how to [query this endpoint in R](https://gist.github.com/rentrop/83cb1d8fc8593726a808032e55314019)

## Running Locally

💾 Install [Postgres](https://www.postgresql.org/) 🐘

⌨️ Initialize the database
```
npm run init-local-db
```

⌨️ Run the local server
```
npm run local-server
```

# TODO/Ideas
* Responde with error-codes.  
At the moment always statusCode:200 is returned.
Not sure how to give back error-codes and preserve the graphql `{"errors": [...]}`-style.
Using `cb(some error)` and a custom `template` could be a solution... Not sure how exactly - [Serverless Doku on status codes](https://serverless.com/framework/docs/providers/aws/events/apigateway#custom-status-codes)

* Using API Gateway Custom Authorizers  
At the moment the JWT-Validation is done via postgraphql's [setupRequestPgClientTransaction](https://github.com/calebmer/postgraphql/blob/e72696de3d67f5d478c009f8be4c9b25fdb1e2ed/src/postgraphql/http/setupRequestPgClientTransaction.js#L39) function.  
Maybe it would be better to do it via [API Gateway Custom Authorizers](http://docs.aws.amazon.com/apigateway/latest/developerguide/use-custom-authorizer.html) - [Serverless Doku](https://serverless.com/framework/docs/providers/aws/events/apigateway#http-endpoints-with-custom-authorizers)
