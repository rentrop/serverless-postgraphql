import HttpTransport from 'lokka-transport-http';
import Lokka from 'lokka';
import _ from 'lodash';
import { endpoint } from './endpoints';

const anonLokka = new Lokka({ transport: new HttpTransport(endpoint) });
const communityAdminEmail = 'admin@community.floods';
const communityAdminPassword = 'texasfloods';

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

describe('As a community admin', async () => {
  var lokka, superlokka;
  var newUserIds = [];

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

  it('should fail to register a new admin', async () => {
    try {
      const response = await lokka.send(`
        mutation {
          registerUser(input: {
            firstName: "New",
            lastName: "Admin",
            jobTitle: "Community Admin",
            communityId: 1,
            phoneNumber: "555-6666",
            email: "new@ad.min",
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

  it('should fail to delete a user from another community', async () => {
    try {
      const response = await lokka.send(`
      mutation {
        removeUser(input: {userId: 4}) {
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

  it('should fail to delete a crossing from another community', async () => {
    try {
      const response = await lokka.send(`
      mutation {
        removeCrossing(input: {crossingId: 8}) {
          crossing {
            id
          }
        }
      }      
      `);
    } catch (e) {
      expect(e).toMatchSnapshot();
    }
  });

  it('should fail to update the status of a crossing from another community', async () => {
    try {
      const response = await lokka.send(`
        mutation {
          newStatusUpdate(input:{crossingId:8,statusId:1}) {
            clientMutationId
          }
        }     
      `);
    } catch (e) {
      expect(e).toMatchSnapshot();
    }
  });
});
