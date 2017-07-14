import HttpTransport from 'lokka-transport-http';
import Lokka from 'lokka';

const anonLokka = new Lokka({transport: new HttpTransport('http://localhost:5000/graphql')});
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

async function shouldWork(email="", password="", extra_description) {
  describe('as ' + email + ' ' + (extra_description || ''), () => {  
    var lokka;

    beforeAll(async (done) => {
      if(!(email & password)) {
        lokka = anonLokka;
        done();
      }

      getToken(email, password).then((token) => {
        const headers = {
          'Authorization': 'Bearer '+ token
        };
        lokka = new Lokka({transport: new HttpTransport('http://localhost:5000/graphql', {headers})});
        done();
      });

    });

    it('should get everything', async () => {
      const response = await lokka.send(`
        {
          allUsers {
            nodes {
              id
            }
          }
          allCommunities {
            nodes {
              id
            }
          }
          allStatuses {
            nodes {
              id
            }
          }
          allStatusUpdates {
            nodes {
              id
            }
          }
          allStatusReasons {
            nodes {
              id
            }
          }
          allStatusDurations {
            nodes {
              id
            }
          }
          allStatusAssociations {
            nodes {
              id
            }
          }
          allCrossings {
            nodes {
              id
            }
          }
          allCommunityCrossings {
            nodes {
              id
            }
          }
          allCrossings {
            nodes {
              latestStatus {
                id
              }
            }
          }
        }
      `);

      expect(response).not.toBeNull();
    });

  }); 
}

describe('When querying public data', () => {
  shouldWork();
  shouldWork(superAdminEmail, everyPassword);
  shouldWork(communityAdminEmail, everyPassword);
  shouldWork(communityEditorEmail, everyPassword);
});
