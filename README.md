# ctxfloods
Central Texas Floods

## Set up your development environment
💾 Install [Postgres](https://www.postgresql.org/) 🐘
  *  I use [Postgres.app](http://postgresapp.com/)

💾 [Install yarn](https://yarnpkg.com/en/docs/install) 

👯 Clone the repo
```
git clone https://github.com/cityofaustin/ctxfloods
cd ctxfloods
```
### Get the Backend Running
💾 Install the backend
```
cd backend
yarn install
```
🐘  Make sure postgres is running

⌨️ Initialize the database
```
yarn init-local-db
```

⌨️ Run the local server
```
yarn local-server
```
<img src="/README/localserverrunning.png" align="middle" height="142" >

✅ Run the tests
```
yarn tests
```
<img src="/README/backendtestspassed.png" align="middle" height="93" >

🍻 Cheers! The backend should now be up and running!
### Get the frontend running against the local backend
💾 Install the frontend
```
cd frontend
yarn install
```
⌨️ Run the frontend against the local backend
```
yarn start-local
```
<img src="/README/localfrontendrunning.png" align="middle" height="93" >

🥂 Cheers! The frontend should now be up and running!
