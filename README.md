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

🥂 Cheers! The frontend should now be up and running! Have fun clicking around!

🔑 Some pages require a login:

<img src="/README/logintofrontend.png" align="middle" height="76" >

📧 In case of such a page, the following email addresses work:
* superadmin@flo.ods
* admin@community.floods
* editor@community.floods

 🗝 By default all passwords are set to "texasfloods"

### Get Storybook running
⌨️ Generate the schema file
```
cd frontend
yarn get-schema
```

⌨️ Run storybook from the frontend
```
yarn storybook
```
<img src="/README/storybookrunning.png" align="middle" height="62" >
<img src="/README/storybookscreeny.png" align="middle" height="299" >

## Using TravisCI to test and deploy
// TODO: ALL OF THIS
