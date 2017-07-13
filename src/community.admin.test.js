import HttpTransport from 'lokka-transport-http';
import Lokka from 'lokka';
import _ from 'lodash';
import queryPublicData from './queryPublicData';
import authenticate from './authenticate';

const anonLokka = new Lokka({transport: new HttpTransport('http://localhost:5000/graphql')});
const communityAdminEmail = 'admin@community.floods';
const communityAdminPassword = 'texasfloods';

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

describe('As a community admin', async () => {
  var lokka, superlokka;
  var newUserIds = [];

  beforeAll(async (done) => {
    getToken(communityAdminEmail, communityAdminPassword).then((token) => {
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
            crossingById(id:2) {
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
              crossingId: 2,
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
            crossingById(id:2) {
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
            crossingById(id:2) {
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
    } catch(e) {
      expect(e).toMatchSnapshot();
    }
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
    } catch(e) {
      expect(e).toMatchSnapshot();
    }
  });

  it('should fail to delete a crossing from antother community', async () => {
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
