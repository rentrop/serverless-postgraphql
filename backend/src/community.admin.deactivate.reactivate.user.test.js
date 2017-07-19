import HttpTransport from 'lokka-transport-http';
import Lokka from 'lokka';
import uuidv4 from 'uuid';
import { endpoint } from './endpoints';

const anonLokka = new Lokka({transport: new HttpTransport(endpoint)});
const superAdminEmail = 'superadmin@flo.ods';
const communityAdminEmail = 'admin@community.floods';
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

describe('When registering, deactivating, and reactivating a user as a community admin', () => {
  var newUserEmail = uuidv4() + '@flo.ods';
  var newOtherCommunityUserEmail = uuidv4() + '@flo.ods';
  var newUserId;
  var newOtherCommunityUserId;

  describe('As a community admin', async () => {
    var lokka;

    beforeAll(async (done) => {
      getToken(communityAdminEmail, superAdminPassword).then((token) => {
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

      expect(response).not.toBeNull();
      expect(response.registerUser.user.active).toBeTruthy();
    });
  });

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

    it('should register a new other community user', async () => {
      const response = await lokka.send(`
        mutation($email:String!) {
          registerUser(input: {
            firstName: "New",
            lastName: "User",
            jobTitle: "Community Editor",
            communityId: 2,
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
        email: newOtherCommunityUserEmail
      });

      expect(response).not.toBeNull();
      expect(response.registerUser.user.active).toBeTruthy();
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

  describe('As the new other community user', async () => {
    var lokka;

    beforeEach(async (done) => {
      getToken(newOtherCommunityUserEmail, newUserPassword).then((token) => {
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

      newOtherCommunityUserId = response.currentUser.id;
      expect(response.currentUser.firstName).toMatchSnapshot();
    });
  });

  describe('As a community admin again', async () => {
    var lokka;

    beforeAll(async (done) => {
      getToken(communityAdminEmail, superAdminPassword).then((token) => {
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

    it('should fail to deactivate the other community user', async () => {
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
          userID: newOtherCommunityUserId
        });
      } catch(e) {
        expect(e).toMatchSnapshot();
      }
    });
  });

  it('should see the user is deactivated', async () => {
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
      userId: newUserId
    });

    expect(response).toMatchSnapshot();
  });

  describe('As the new other community user again', async () => {
    var lokka;

    beforeEach(async (done) => {
      getToken(newOtherCommunityUserEmail, newUserPassword).then((token) => {
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

  it('should see the other community user is active', async () => {
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
      userId: newOtherCommunityUserId
    });

    expect(response).toMatchSnapshot();
  });

  describe('As a community admin once more', async () => {
    var lokka;

    beforeAll(async (done) => {
      getToken(communityAdminEmail, superAdminPassword).then((token) => {
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
