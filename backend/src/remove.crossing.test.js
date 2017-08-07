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

function shouldWork(email, password, communityId, coordinates, extra_description) {
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

    var newCrossingId;

    it('should add the crossing', async () => {
      const response = await lokka.send(`
        mutation($communityId:Int!) {
          newCrossing(input: {
            name: "New Crossing"
            humanAddress: "In test land"
            description: "TEST LAND IS MAGIC!"
            communityId: $communityId
            longitude: -97.755996
            latitude: 30.30718
          }) {
            crossing {
              id
            }
          }
        }
      `,
      {
        communityId: communityId,
      });

      newCrossingId = response.newCrossing.crossing.id;
      expect(response).not.toBeNull();
    });

    it('the new crossing should show up in the DB', async () => {
      const response = await lokka.send(`
        query ($id: Int!) {
          crossingById(id: $id) {
            name
            humanAddress
            description
            communityCrossingsByCrossingId {
              nodes {
                communityId
              }
            }
          }
        }
      `,
      {
        id: newCrossingId
      });

      expect(response).toMatchSnapshot();
    });

    it('should delete the new crossing', async () => {
      const response = await lokka.send(`
      mutation ($id: Int!) {
        removeCrossing(input: {crossingId: $id}) {
          crossing {
            id
          }
        }
      }
      `,
      {
        id: newCrossingId
      });

      expect(response.removeCrossing.crossing.id).toEqual(newCrossingId);
    });

    it('the new crossing should no longer show up in the DB', async () => {
      const response = await lokka.send(`
        query ($id: Int!) {
          crossingById(id: $id) {
            id
          }
        }
      `,
      {
        id: newCrossingId
      });

      expect(response.crossingById).toBeNull();
    });
  });
}

function shouldFail(email, password, communityId, extra_description) {
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

    var newCrossingId;

    it('should add the crossing', async () => {
      const response = await lokka.send(`
        mutation($communityId:Int!) {
          newCrossing(input: {
            name: "New Crossing"
            humanAddress: "In test land"
            description: "TEST LAND IS MAGIC!"
            communityId: $communityId
            longitude: -97.755996
            latitude: 30.30718
          }) {
            crossing {
              id
            }
          }
        }
      `,
      {
        communityId: communityId,
      });

      newCrossingId = response.newCrossing.crossing.id;
      expect(response).not.toBeNull();
    });

    it('the new crossing should show up in the DB', async () => {
      const response = await lokka.send(`
        query ($id: Int!) {
          crossingById(id: $id) {
            name
            humanAddress
            description
            communityCrossingsByCrossingId {
              nodes {
                communityId
              }
            }
          }
        }
      `,
      {
        id: newCrossingId
      });

      expect(response).toMatchSnapshot();
    });

    it('should fail to delete the new crossing', async () => {
      var err;
      try {
        const response = await lokka.send(`
          mutation ($id: Int!) {
            removeCrossing(input: {crossingId: $id}) {
              crossing {
                id
              }
            }
          }
          `,
          {
            id: newCrossingId
          });
      } catch(e) {
        expect(e).toMatchSnapshot();
      }
    });
  });
}

describe('When removing a crossing', () => {
  shouldWork(superAdminEmail, everyPassword, 1);
  shouldWork(superAdminEmail, everyPassword, 2);
  shouldWork(communityAdminEmail, everyPassword, 1);
  shouldFail(communityEditorEmail, everyPassword, 1);
});
