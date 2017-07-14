import HttpTransport from 'lokka-transport-http';
import Lokka from 'lokka';

const anonLokka = new Lokka({transport: new HttpTransport('http://localhost:5000/graphql')});
const communityEditorEmail = 'editor@community.floods';
const communityEditorPassword = 'texasfloods';

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

describe('As a community editor', async () => {
  var lokka;

  beforeAll(async (done) => {
    getToken(communityEditorEmail, communityEditorPassword).then((token) => {
      const headers = {
        'Authorization': 'Bearer '+ token
      };
      lokka = new Lokka({transport: new HttpTransport('http://localhost:5000/graphql', {headers})});
      done();
    });
  });

  it('should fail to register a new user', async () => {
    try {
      const response = await anonLokka.send(`
        mutation {
          registerUser(input: {
            firstName: "New",
            lastName: "User",
            jobTitle: "Community Admin",
            communityId: 1,
            phoneNumber: "555-6666",
            email: "new@us.er",
            password:"texasfloods",
            role:"floods_community_admin"
          }) {
            user {
              id
            }
          }
        }
    `);
    } catch(e) {
      expect(e).toMatchSnapshot();
    }
  });
});
