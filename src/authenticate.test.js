import HttpTransport from 'lokka-transport-http';
import Lokka from 'lokka';

const anonLokka = new Lokka({transport: new HttpTransport('http://localhost:5000/graphql')});
const superAdminEmail = 'superadmin@flo.ods';
const communityAdminEmail = 'admin@community.floods';
const communityEditorEmail = 'editor@community.floods';
const everyPassword = 'texasfloods';
const wrongPassword = 'wrong';

function shouldWork(email, password, extra_description) {
  describe('as ' + email + ' ' + (extra_description || ''), () => {
    it('should generate a valid jwtToken', async () => {
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

      expect(response.authenticate.jwtToken).not.toBeNull();
    });
  }); 
}

function shouldFail(email="", password="", extra_description) {
  describe('as ' + email + ' ' + (extra_description || ''), () => {
    it('should not generate a valid jwtToken', async () => {
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

      expect(response.authenticate.jwtToken).toBeNull();
    });
  }); 
}

describe('When authenticating', () => {
  shouldFail();
  shouldWork(superAdminEmail, everyPassword);
  shouldFail(superAdminEmail, wrongPassword);
  shouldWork(communityAdminEmail, everyPassword);
  shouldFail(communityAdminEmail, wrongPassword);
  shouldWork(communityEditorEmail, everyPassword);
  shouldFail(communityEditorEmail, wrongPassword);
});
