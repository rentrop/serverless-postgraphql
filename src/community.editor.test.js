import HttpTransport from 'lokka-transport-http';
import Lokka from 'lokka';
import queryPublicData from './queryPublicData';
import authenticate from './authenticate';

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

  describe('When updating the status of a crossing', () => {

    describe('In the same community as the user', () => {
      var originalStatusId;
      var newStatusId;

      it('before updating it should get the current status', async () => {
        const response = await lokka.send(`
          {
            crossingById(id:1) {
              latestStatus {
                id
              }
            }
          }
        `);

        originalStatusId = response.crossingById.latestStatus.id;
        expect(response).not.toBeNull();
      });

      it('should update the status', async () => {
        const response = await lokka.send(`
          mutation {
            newStatusUpdate(input: {
              statusId: 1,
              crossingId: 1,
              notes: "THIS IS A STATUS UPDATE TEST"
            }) {
              statusUpdate {
                id
              }
            }
          }
        `);

        newStatusId = response.newStatusUpdate.statusUpdate.id;
        expect(response).not.toBeNull();
      });

      it('the new status should show up in the DB', async () => {
        const response = await lokka.send(`
          {
            crossingById(id:1) {
              latestStatus {
                notes
              }
            }
          }
        `);

        expect(response).toMatchSnapshot();
      });

      it('the lastest status should be correct', async () => {
        const response = await lokka.send(`
          {
            crossingById(id:1) {
              latestStatus {
                id
              }
            }
          }
        `);

        expect(response.crossingById.latestStatus.id).not.toEqual(originalStatusId);
        expect(response.crossingById.latestStatus.id).toEqual(newStatusId);
      });
    });

    describe('NOT in the same community as the user', () => {
      it('should fail to update the status', async () => {
        try {
          const response = await lokka.send(`
            mutation {
              newStatusUpdate(input: {
                statusId: 1,
                crossingId: 7,
                notes: "THIS IS A STATUS UPDATE TEST"
              }) {
                statusUpdate {
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

  });

  describe('When adding a crossing', () => {

    describe('to the same community as the user', () => {
      var newCrossingId;

      it('before updating it should get the current crossings', async () => {
        const response = await lokka.send(`
          {
            allCrossings {
              nodes {
                id
              }
            }
          }
        `);

        expect(response).not.toBeNull();
      });

      it('should add the crossing', async () => {
        const response = await lokka.send(`
          mutation {
            newCrossing(input: {
              name: "New Crossing"
              humanAddress: "Near the barn"
              description: "Describe!"
              communityId: 1
            }) {
              crossing {
                id
              }
            }
          }
        `);

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

    describe('NOT to the same community as the user', () => {
      it('should fail to add the crossing', async () => {
        try {
          const response = await lokka.send(`
            mutation {
              newCrossing(input: {
                name: "New Crossing"
                humanAddress: "Near the barn"
                description: "Describe!"
                communityId: 2
              }) {
                crossing {
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

  });

  it('should get the correct current user', async () => {
    const response = await lokka.send(`
      {
        currentUser {
          id
        }
      }
    `);

    expect(response).toMatchSnapshot();
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

  describe('When querying public data', () => {

    it('should get all users', async () => {
      const response = await lokka.send(`
      {
        allUsers {
          nodes {
            id
          }
        }
      }
      `);

      expect(response).not.toBeNull();
    });

    it('should get all communities', async () => {
      const response = await lokka.send(`
      {
        allCommunities {
          nodes {
            id
          }
        }
      }
      `);

      expect(response).not.toBeNull();
    });

    it('should get all statuses', async () => {
      const response = await lokka.send(`
      {
        allStatuses {
          nodes {
            id
          }
        }
      }
      `);

      expect(response).not.toBeNull();
    });

    it('should get all status updates', async () => {
      const response = await lokka.send(`
      {
        allStatusUpdates {
          nodes {
            id
          }
        }
      }
      `);

      expect(response).not.toBeNull();
    });

    it('should get all status reasons', async () => {
      const response = await lokka.send(`
      {
        allStatusReasons {
          nodes {
            id
          }
        }
      }
      `);

      expect(response).not.toBeNull();
    });

    it('should get all status durations', async () => {
      const response = await lokka.send(`
      {
        allStatusDurations {
          nodes {
            id
          }
        }
      }
      `);

      expect(response).not.toBeNull();
    });

    it('should get all status associations', async () => {
      const response = await lokka.send(`
      {
        allStatusAssociations {
          nodes {
            id
          }
        }
      }
      `);

      expect(response).not.toBeNull();
    });

    it('should get all crossings', async () => {
      const response = await lokka.send(`
      {
        allCrossings {
          nodes {
            id
          }
        }
      }
      `);

      expect(response).not.toBeNull();
    });

    it('should get all community crossings', async () => {
      const response = await lokka.send(`
      {
        allCommunityCrossings {
          nodes {
            id
          }
        }
      }
      `);

      expect(response).not.toBeNull();
    });

    it('should get the latest statuses correctly', async () => {
      const response = await lokka.send(`
        {
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

});
