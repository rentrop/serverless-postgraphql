import HttpTransport from 'lokka-transport-http';
import Lokka from 'lokka';
import uuidv4 from 'uuid';
import { endpoint } from './endpoints';

const anonLokka = new Lokka({ transport: new HttpTransport(endpoint) });
const communityAdminEmail = 'admin@community.floods';
const communityAdminPassword = 'texasfloods';
const newUserPassword = 'texasfloods';

async function getToken(email, password) {
  const response = await anonLokka.send(
    `
    mutation($email:String!, $password:String!) {
      authenticate(input: {email: $email, password: $password}) {
        jwtToken
      }
    }
  `,
    {
      email: email,
      password: password,
    },
  );

  return response.authenticate.jwtToken;
}

describe('When registering a super admin', () => {
  describe('As a community admin', async () => {
    var lokka;

    beforeAll(async done => {
      getToken(communityAdminEmail, communityAdminPassword).then(token => {
        const headers = {
          Authorization: 'Bearer ' + token,
        };
        lokka = new Lokka({
          transport: new HttpTransport(endpoint, { headers }),
        });
        done();
      });
    });

    it('should fail to register a new super admin', async () => {
      try {
        const response = await lokka.send(`
          mutation {
            registerUser(input: {
              firstName: "New",
              lastName: "User",
              jobTitle: "Super Admin",
              communityId: 1,
              phoneNumber: "555-6666",
              email: "new@super.admin",
              password:"texasfloods",
              role:"floods_super_admin"
            }) {
              user {
                id
              }
            }
          }
        `);
      } catch (e) {
        expect(e).toMatchSnapshot();
      }
    });
  });
});

describe('When registering a community admin', () => {
  describe('As a community admin', async () => {
    var lokka;

    beforeAll(async done => {
      getToken(communityAdminEmail, communityAdminPassword).then(token => {
        const headers = {
          Authorization: 'Bearer ' + token,
        };
        lokka = new Lokka({
          transport: new HttpTransport(endpoint, { headers }),
        });
        done();
      });
    });

    it('should fail to register a new community admin', async () => {
      try {
        const response = await lokka.send(`
          mutation {
            registerUser(input: {
              firstName: "New",
              lastName: "User",
              jobTitle: "Community Admin",
              communityId: 1,
              phoneNumber: "555-6666",
              email: "new@community.admin",
              password:"texasfloods",
              role:"floods_community_admin"
            }) {
              user {
                id
              }
            }
          }
        `);
      } catch (e) {
        expect(e).toMatchSnapshot();
      }
    });
  });
});

describe('When registering a community editor', () => {
  var newUserEmail = uuidv4() + '@flo.ods';
  var newUserId;

  describe('As a community admin', async () => {
    var lokka;

    beforeAll(async done => {
      getToken(communityAdminEmail, communityAdminPassword).then(token => {
        const headers = {
          Authorization: 'Bearer ' + token,
        };
        lokka = new Lokka({
          transport: new HttpTransport(endpoint, { headers }),
        });
        done();
      });
    });

    it('should register a new community editor in the same community', async () => {
      const response = await lokka.send(
        `
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
          email: newUserEmail,
        },
      );

      newUserId = response.registerUser.user.id;
      expect(response).not.toBeNull();
    });

    it('should fail to register a new community editor in a different community', async () => {
      try {
        const response = await lokka.send(`
          mutation {
            registerUser(input: {
              firstName: "New",
              lastName: "User",
              jobTitle: "Community Editor",
              communityId: 2,
              phoneNumber: "555-6666",
              email: "new@community.editor",
              password:"texasfloods",
              role:"floods_community_editor"
            }) {
              user {
                id
              }
            }
          }
        `);
      } catch (e) {
        expect(e).toMatchSnapshot();
      }
    });
  });

  it('the new user should show up in the DB', async () => {
    const response = await anonLokka.send(
      `
      query ($id: Int!) {
        userById(id: $id) {
          firstName
          lastName
          jobTitle
        }
      }
    `,
      {
        id: newUserId,
      },
    );

    expect(response).toMatchSnapshot();
  });

  describe('As the new community editor', async () => {
    var lokka;

    beforeEach(async done => {
      getToken(newUserEmail, newUserPassword).then(token => {
        const headers = {
          Authorization: 'Bearer ' + token,
        };
        lokka = new Lokka({
          transport: new HttpTransport(endpoint, { headers }),
        });
        done();
      });
    });

    it('should get the correct current user', async () => {
      const response = await lokka.send(`
        {
          currentUser {
            firstName
            lastName
            jobTitle
          }
        }
      `);

      expect(response).toMatchSnapshot();
    });
  });
});
