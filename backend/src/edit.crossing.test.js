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

    it('should add a new crossing', async () => {
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

    it('should edit the crossing', async () => {
      const response = await lokka.send(`
        mutation editCrossing($id: Int!, $name: String!, $description: String!) {
          editCrossing(input: {crossingId: $id, name: $name, description: $description}) {
            crossing {
              id
              name
              description
            }
          }
        }
      `,
      {
        id: newCrossingId,
        name: "Edited Crossing Name",
        description: "Edited Description"
      });

      expect(response).not.toBeNull();
    });

    it('the edited crossing should show up in the DB', async () => {
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

  });
}

describe('When editing a crossing', () => {
  shouldWork(superAdminEmail, everyPassword, 1);
  shouldWork(communityAdminEmail, everyPassword, 1);
  shouldWork(communityEditorEmail, everyPassword, 1);
});
