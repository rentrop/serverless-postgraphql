import HttpTransport from 'lokka-transport-http';
import Lokka from 'lokka';
import { endpoint } from './endpoints';

const anonLokka = new Lokka({transport: new HttpTransport(endpoint)});
const superAdminEmail = 'superadmin@flo.ods';
const communityAdminEmail = 'admin@community.floods';
const communityEditorEmail = 'editor@community.floods';
const everyPassword = 'texasfloods';

async function getToken(email, password) {
  const response = await anonLokka.send(`
    mutation($email:String!, $password:String!) {
      authenticate(input: {email: $email, password: $password}) {
        jwtToken
      }
    }
  `,
  {
    email: email,
    password: password
  });

  return response.authenticate.jwtToken;
}

function shouldWork(email, password, extra_description) {
  describe('as ' + email + ' ' + (extra_description || ''), () => {
    var lokka;

    beforeAll(async (done) => {
      getToken(email, password).then((token) => {
        const headers = {
          'Authorization': 'Bearer '+ token
        };
        lokka = new Lokka({transport: new HttpTransport(endpoint, {headers})});
        done();
      });
    });

    it('should get the correct current user', async () => {
      const response = await lokka.send(`
        {
          currentUser {
            id
          }
        }
      `);

      expect(response).toMatchSnapshot();
    });
  }); 
}

function shouldFail(email="", password="", extra_description) {
  describe('as ' + email + ' ' + (extra_description || ''), () => {  
    var lokka;

    beforeAll(async (done) => {

      if(!(email & password)) {
        lokka = anonLokka;
        done();
      }

      getToken(email, password).then((token) => {
        const headers = {
          'Authorization': 'Bearer '+ token
        };
        lokka = new Lokka({transport: new HttpTransport(endpoint, {headers})});
        done();
      });
    });

    it('should fail to get the current user', async () => {
      try {
        const response = await lokka.send(`
        {
          currentUser {
            id
          }
        }
      `);
      } catch(e) {
        expect(e).toMatchSnapshot();
      }
    });
  });
}

describe('When getting current user', () => {
  shouldFail();
  shouldWork(superAdminEmail, everyPassword);
  shouldWork(communityAdminEmail, everyPassword);
  shouldWork(communityEditorEmail, everyPassword);
});
