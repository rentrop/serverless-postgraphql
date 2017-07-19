import HttpTransport from 'lokka-transport-http';
import Lokka from 'lokka';
import { endpoint } from './endpoints';

const anonLokka = new Lokka({transport: new HttpTransport(endpoint)});
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
      lokka = new Lokka({transport: new HttpTransport(endpoint, {headers})});
      done();
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

});
