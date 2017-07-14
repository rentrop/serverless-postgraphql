import HttpTransport from 'lokka-transport-http';
import Lokka from 'lokka';
import queryPublicData from './queryPublicData';
import authenticate from './authenticate';

const anonLokka = new Lokka({transport: new HttpTransport('http://localhost:5000/graphql')});
const superAdminEmail = 'superadmin@flo.ods';
const superAdminPassword = 'texasfloods';

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

  describe('When updating the status of a crossing', () => {
    var originalStatusId;
    var newStatusId;

    it('before updating it should get the current status', async () => {
      const response = await lokka.send(`
        {
          crossingById(id:3) {
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
            crossingId: 3,
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
          crossingById(id:3) {
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
          crossingById(id:3) {
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

  describe('When adding a crossing', () => {
    var newCrossingId;

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

  describe('When adding a crossing to a different community', () => {
    var newCrossingId;

    it('should add the crossing', async () => {
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

  describe('When adding and editing a community', () => {
    var newCommunityId;

    it('should add the community', async () => {
      const response = await lokka.send(`
        mutation {
          newCommunity(input: {
            name: "New Community"
          }) {
            community {
              id
            }
          }
        }
      `);

      newCommunityId = response.newCommunity.community.id;
      expect(response).not.toBeNull();
    });

    it('the new community should show up in the DB', async () => {
      const response = await lokka.send(`
        query ($id: Int!) {
          communityById(id: $id) {
            name
          }
        }
      `,
      {
        id: newCommunityId
      });

      expect(response).toMatchSnapshot();
    });

    it('should rename the community', async () => {
      const response = await lokka.send(`
        mutation ($id: Int!) {
          changeCommunityName(input: {
            communityId: $id
            name: "Renamed Community"
          }) {
            community {
              id
            }
          }
        }
      `,
      {
        id: newCommunityId
      });

      expect(response).not.toBeNull();
    });

    it('the renamed community should show up in the DB', async () => {
      const response = await lokka.send(`
        query ($id: Int!) {
          communityById(id: $id) {
            name
          }
        }
      `,
      {
        id: newCommunityId
      });

      expect(response).toMatchSnapshot();
    });

    it('should delete the new community', async () => {
      const response = await lokka.send(`
      mutation ($id: Int!) {
        deleteCommunity(input: {communityId: $id}) {
          community {
            id
          }
        }
      }      
      `,
      {
        id: newCommunityId
      });

      expect(response.deleteCommunity.community.id).toEqual(newCommunityId);
    });

    it('the new community should no longer show up in the DB', async () => {
      const response = await lokka.send(`
        query ($id: Int!) {
          communityById(id: $id) {
            name
          }
        }
      `,
      {
        id: newCommunityId
      });

      expect(response.communityById).toBeNull();
    });
  });

  describe('When adding and editing a status', () => {
    var newStatusId;

    it('should add the status', async () => {
      const response = await lokka.send(`
        mutation {
          newStatus(input: {
            name: "New Status"
          }) {
            status {
              id
            }
          }
        }
      `);

      newStatusId = response.newStatus.status.id;
      expect(response).not.toBeNull();
    });

    it('the new status should show up in the DB', async () => {
      const response = await lokka.send(`
        query ($id: Int!) {
          statusById(id: $id) {
            name
          }
        }
      `,
      {
        id: newStatusId
      });

      expect(response).toMatchSnapshot();
    });

    it('should rename the status', async () => {
      const response = await lokka.send(`
        mutation ($id: Int!) {
          changeStatusName(input: {
            statusId: $id
            name: "Renamed Status"
          }) {
            status {
              id
            }
          }
        }
      `,
      {
        id: newStatusId
      });

      expect(response).not.toBeNull();
    });

    it('the renamed status should show up in the DB', async () => {
      const response = await lokka.send(`
        query ($id: Int!) {
          statusById(id: $id) {
            name
          }
        }
      `,
      {
        id: newStatusId
      });

      expect(response).toMatchSnapshot();
    });

    it('should delete the new status', async () => {
      const response = await lokka.send(`
      mutation ($id: Int!) {
        deleteStatus(input: {statusId: $id}) {
          status {
            id
          }
        }
      }      
      `,
      {
        id: newStatusId
      });

      expect(response.deleteStatus.status.id).toEqual(newStatusId);
    });

    it('the new status should no longer show up in the DB', async () => {
      const response = await lokka.send(`
        query ($id: Int!) {
          statusById(id: $id) {
            name
          }
        }
      `,
      {
        id: newStatusId
      });

      expect(response.statusById).toBeNull();
    });
  });

  describe('When adding and editing a status reason', () => {
    var newStatusReasonId;

    it('should add the status reason', async () => {
      const response = await lokka.send(`
        mutation {
          newStatusReason(input: {
            name: "New Status Reason"
            statusId: 1
          }) {
            statusReason {
              id
            }
          }
        }
      `);

      newStatusReasonId = response.newStatusReason.statusReason.id;
      expect(response).not.toBeNull();
    });

    it('the new status reason should show up in the DB', async () => {
      const response = await lokka.send(`
        query ($id: Int!) {
          statusReasonById(id: $id) {
            name
          }
        }
      `,
      {
        id: newStatusReasonId
      });

      expect(response).toMatchSnapshot();
    });

    it('should rename the status reason', async () => {
      const response = await lokka.send(`
        mutation ($id: Int!) {
          changeStatusReasonName(input: {
            statusReasonId: $id
            name: "Renamed Status Reason"
          }) {
            statusReason {
              id
            }
          }
        }
      `,
      {
        id: newStatusReasonId
      });

      expect(response).not.toBeNull();
    });

    it('the renamed status reason should show up in the DB', async () => {
      const response = await lokka.send(`
        query ($id: Int!) {
          statusReasonById(id: $id) {
            name
          }
        }
      `,
      {
        id: newStatusReasonId
      });

      expect(response).toMatchSnapshot();
    });

    it('should delete the new status reason', async () => {
      const response = await lokka.send(`
      mutation ($id: Int!) {
        deleteStatusReason(input: {statusReasonId: $id}) {
          statusReason {
            id
          }
        }
      }      
      `,
      {
        id: newStatusReasonId
      });

      expect(response.deleteStatusReason.statusReason.id).toEqual(newStatusReasonId);
    });

    it('the new status reason should no longer show up in the DB', async () => {
      const response = await lokka.send(`
        query ($id: Int!) {
          statusReasonById(id: $id) {
            name
          }
        }
      `,
      {
        id: newStatusReasonId
      });

      expect(response.statusReasonById).toBeNull();
    });
  });

  describe('When adding and editing a status duration', () => {
    var newStatusDurationId;

    it('should add the status duration', async () => {
      const response = await lokka.send(`
        mutation {
          newStatusDuration(input: {
            name: "New Status Duration"
            statusId: 1,
            timespan: {
              days: 1
            }
          }) {
            statusDuration {
              id
            }
          }
        }
      `);

      newStatusDurationId = response.newStatusDuration.statusDuration.id;
      expect(response).not.toBeNull();
    });

    it('the new status duration should show up in the DB', async () => {
      const response = await lokka.send(`
        query ($id: Int!) {
          statusDurationById(id: $id) {
            name
          }
        }
      `,
      {
        id: newStatusDurationId
      });

      expect(response).toMatchSnapshot();
    });

    it('should rename the status duration', async () => {
      const response = await lokka.send(`
        mutation ($id: Int!) {
          changeStatusDurationName(input: {
            statusDurationId: $id
            name: "Renamed Status Duration"
          }) {
            statusDuration {
              id
            }
          }
        }
      `,
      {
        id: newStatusDurationId
      });

      expect(response).not.toBeNull();
    });

    it('the renamed status duration should show up in the DB', async () => {
      const response = await lokka.send(`
        query ($id: Int!) {
          statusDurationById(id: $id) {
            name
          }
        }
      `,
      {
        id: newStatusDurationId
      });

      expect(response).toMatchSnapshot();
    });

    it('should delete the new status duration', async () => {
      const response = await lokka.send(`
      mutation ($id: Int!) {
        deleteStatusDuration(input: {statusDurationId: $id}) {
          statusDuration {
            id
          }
        }
      }      
      `,
      {
        id: newStatusDurationId
      });

      expect(response.deleteStatusDuration.statusDuration.id).toEqual(newStatusDurationId);
    });

    it('the new status duration should no longer show up in the DB', async () => {
      const response = await lokka.send(`
        query ($id: Int!) {
          statusDurationById(id: $id) {
            name
          }
        }
      `,
      {
        id: newStatusDurationId
      });

      expect(response.statusDurationById).toBeNull();
    });
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
