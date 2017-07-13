import HttpTransport from 'lokka-transport-http';
import Lokka from 'lokka';
import uuidv4 from 'uuid';
import queryPublicData from './queryPublicData';
import authenticate from './authenticate';

const anonLokka = new Lokka({transport: new HttpTransport('http://localhost:5000/graphql')});
const superAdminEmail = 'superadmin@flo.ods';
const communityEditorEmail = 'editor@community.floods';
const superAdminPassword = 'texasfloods';
const newUserPassword = 'texasfloods';

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

describe('When deactivating, and reactivating a user as a community editor', () => {
  var newUserEmail = uuidv4() + '@flo.ods';
  var newUserId;

  describe('As a super admin', async () => {
    var lokka;

    beforeAll(async (done) => {
      getToken(superAdminEmail, superAdminPassword).then((token) => {
        const headers = {
          'Authorization': 'Bearer '+ token
        };
        lokka = new Lokka({transport: new HttpTransport('http://localhost:5000/graphql', {headers})});
        done();
      });
    });

    it('should register a new community editor', async () => {
      const response = await lokka.send(`
        mutation($email:String!) {
          registerUser(input: {
            firstName: "New",
            lastName: "User",
            jobTitle: "Community Editor",
            communityId: 1,
            phoneNumber: "555-6666",
            email: $email,
            password:"texasfloods",
            role:"floods_community_editor"
          }) {
            user {
              id
            }
          }
        }
      `,
      {
        email: newUserEmail
      });

      newUserId = response.registerUser.user.id;
      expect(response).not.toBeNull();
    });
  });

  describe('As a community editor', async () => {
    var lokka;

    beforeAll(async (done) => {
      getToken(communityEditorEmail, superAdminPassword).then((token) => {
        const headers = {
          'Authorization': 'Bearer '+ token
        };
        lokka = new Lokka({transport: new HttpTransport('http://localhost:5000/graphql', {headers})});
        done();
      });
    });

    it('should fail to deactivate the new community editor', async () => {
      try {
        const response = await lokka.send(`
          mutation($userID:Int!) {
            deactivateUser(input: {userId: $userID}) {
              user {
                id
              }
            }
          }
        `,
        {
          userID: newUserId
        });
      } catch(e) {
        expect(e).toMatchSnapshot();
      }
    });
  });

  describe('As a super admin again', async () => {
    var lokka;

    beforeAll(async (done) => {
      getToken(superAdminEmail, superAdminPassword).then((token) => {
        const headers = {
          'Authorization': 'Bearer '+ token
        };
        lokka = new Lokka({transport: new HttpTransport('http://localhost:5000/graphql', {headers})});
        done();
      });
    });

    it('should deactivate the user', async () => {
      const response = await lokka.send(`
        mutation($userID:Int!) {
          deactivateUser(input: {userId: $userID}) {
            user {
              id
            }
          }
        }
      `,
      {
        userID: newUserId
      });

      expect(response).not.toBeNull();
    });
  });

  describe('As a community editor again', async () => {
    var lokka;

    beforeAll(async (done) => {
      getToken(communityEditorEmail, superAdminPassword).then((token) => {
        const headers = {
          'Authorization': 'Bearer '+ token
        };
        lokka = new Lokka({transport: new HttpTransport('http://localhost:5000/graphql', {headers})});
        done();
      });
    });

    it('should fail to reactivate the new community editor', async () => {
      try {
      const response = await lokka.send(`
          mutation($userId:Int!, $email:String!) {
            reactivateUser(input: {
              userId: $userId,
              email: $email
              password: "texasfloods"
              role: "floods_community_editor"
            }) {
              user {
                firstName
                lastName
                active
              }
            }
          }
        `,
        {
          userId: newUserId,
          email: newUserEmail
        });
      } catch(e) {
        expect(e).toMatchSnapshot();
      }
    });
  });
});
