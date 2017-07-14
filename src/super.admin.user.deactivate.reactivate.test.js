import HttpTransport from 'lokka-transport-http';
import Lokka from 'lokka';
import uuidv4 from 'uuid';
import { endpoint } from './endpoints';

const anonLokka = new Lokka({transport: new HttpTransport(endpoint)});
const superAdminEmail = 'superadmin@flo.ods';
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

function userInDatabase(userId) {
  it('should see the user in the database', async () => {
    const response = await anonLokka.send(`
      query($userId:Int!){
        userById(id:$userId) {
          firstName
          lastName
          active
        }
      }
    `,
    {
      userId: userId
    });

    expect(response).toMatchSnapshot();
  });
}

describe('When registering, deactivating, and reactivating a user as a super admin', () => {
  var newUserEmail = uuidv4() + '@flo.ods';
  var newUserId;

  describe('As a super admin', async () => {
    var lokka;

    beforeAll(async (done) => {
      getToken(superAdminEmail, superAdminPassword).then((token) => {
        const headers = {
          'Authorization': 'Bearer '+ token
        };
        lokka = new Lokka({transport: new HttpTransport(endpoint, {headers})});
        done();
      });
    });

    it('should register a new user', async () => {
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
              active
            }
          }
        }
      `,
      {
        email: newUserEmail
      });

      newUserId = response.registerUser.user.id;
      expect(response).not.toBeNull();
      expect(response.registerUser.user.active).toBeTruthy();
    });

    it('after registering', () => {
      userInDatabase(newUserId);
    });
  });

  describe('As the new user', async () => {
    var lokka;

    beforeEach(async (done) => {
      getToken(newUserEmail, newUserPassword).then((token) => {
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
            firstName
          }
        }
      `);

      newUserId = response.currentUser.id;
      expect(response.currentUser.firstName).toMatchSnapshot();
    });
  });

  describe('As a super admin again', async () => {
    var lokka;

    beforeAll(async (done) => {
      getToken(superAdminEmail, superAdminPassword).then((token) => {
        const headers = {
          'Authorization': 'Bearer '+ token
        };
        lokka = new Lokka({transport: new HttpTransport(endpoint, {headers})});
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

    it('after deactivating', () => {
      userInDatabase(newUserId);
    });

  });

  describe('As a super admin once more', async () => {
    var lokka;

    beforeAll(async (done) => {
      getToken(superAdminEmail, superAdminPassword).then((token) => {
        const headers = {
          'Authorization': 'Bearer '+ token
        };
        lokka = new Lokka({transport: new HttpTransport(endpoint, {headers})});
        done();
      });
    });

    it('should reactivate the user', async () => {
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

      expect(response).toMatchSnapshot();
    });

    it('after reactivating', () => {
      userInDatabase(newUserId);
    });

  });

  describe('As the reactivated user', async () => {
    var lokka;

    beforeAll(async (done) => {
      getToken(newUserEmail, newUserPassword).then((token) => {
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
            firstName
            lastName
          }
        }
      `);

      expect(response).toMatchSnapshot();
    });
  });
});
