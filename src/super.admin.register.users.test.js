import HttpTransport from 'lokka-transport-http';
import Lokka from 'lokka';
import uuidv4 from 'uuid';
import queryPublicData from './queryPublicData';
import authenticate from './authenticate';

const anonLokka = new Lokka({transport: new HttpTransport('http://localhost:5000/graphql')});
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

describe('When registering a super admin', () => {
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

    it('should register a new super admin', async () => {
      const response = await lokka.send(`
        mutation($email:String!) {
          registerUser(input: {
            firstName: "New",
            lastName: "User",
            jobTitle: "Super Admin",
            communityId: 1,
            phoneNumber: "555-6666",
            email: $email,
            password:"texasfloods",
            role:"floods_super_admin"
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

  it('the new user should show up in the DB', async () => {
    const response = await anonLokka.send(`
      query ($id: Int!) {
        userById(id: $id) {
          firstName
          lastName
          jobTitle
        }
      }
    `,
    {
      id: newUserId
    });

    expect(response).toMatchSnapshot();
  });

  describe('As the new super admin', async () => {
    var lokka;

    beforeEach(async (done) => {
      getToken(newUserEmail, newUserPassword).then((token) => {
        const headers = {
          'Authorization': 'Bearer '+ token
        };
        lokka = new Lokka({transport: new HttpTransport('http://localhost:5000/graphql', {headers})});
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

describe('When registering a community admin', () => {
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

    it('should register a new community admin', async () => {
      const response = await lokka.send(`
        mutation($email:String!) {
          registerUser(input: {
            firstName: "New",
            lastName: "User",
            jobTitle: "Community Admin",
            communityId: 1,
            phoneNumber: "555-6666",
            email: $email,
            password:"texasfloods",
            role:"floods_community_admin"
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

  it('the new user should show up in the DB', async () => {
    const response = await anonLokka.send(`
      query ($id: Int!) {
        userById(id: $id) {
          firstName
          lastName
          jobTitle
        }
      }
    `,
    {
      id: newUserId
    });

    expect(response).toMatchSnapshot();
  });

  describe('As the new community admin', async () => {
    var lokka;

    beforeEach(async (done) => {
      getToken(newUserEmail, newUserPassword).then((token) => {
        const headers = {
          'Authorization': 'Bearer '+ token
        };
        lokka = new Lokka({transport: new HttpTransport('http://localhost:5000/graphql', {headers})});
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

describe('When registering a community editor', () => {
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

  it('the new user should show up in the DB', async () => {
    const response = await anonLokka.send(`
      query ($id: Int!) {
        userById(id: $id) {
          firstName
          lastName
          jobTitle
        }
      }
    `,
    {
      id: newUserId
    });

    expect(response).toMatchSnapshot();
  });

  describe('As the new community editor', async () => {
    var lokka;

    beforeEach(async (done) => {
      getToken(newUserEmail, newUserPassword).then((token) => {
        const headers = {
          'Authorization': 'Bearer '+ token
        };
        lokka = new Lokka({transport: new HttpTransport('http://localhost:5000/graphql', {headers})});
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
