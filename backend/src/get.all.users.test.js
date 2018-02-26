import HttpTransport from 'lokka-transport-http';
import Lokka from 'lokka';
import { endpoint } from './endpoints';

const anonLokka = new Lokka({ transport: new HttpTransport(endpoint) });
const communityOne = { communityId: 1 };
const communityTwo = { communityId: 2 };

describe('When getting users', () => {
  it('should get all users', async () => {
    const response = await anonLokka.send(
      `
      query($communityId:Int) {
        allUsers(condition: {communityId: $communityId}) {
          nodes {
            communityId
          }
        }
      }
    `,
      {},
    );

    expect(response.allUsers.nodes).toContainEqual(communityOne);
    expect(response.allUsers.nodes).toContainEqual(communityTwo);
  });

  it('should get only the users in a specified community', async () => {
    const response = await anonLokka.send(
      `
      query($communityId:Int) {
        allUsers(condition: {communityId: $communityId}) {
          nodes {
            communityId
          }
        }
      }
    `,
      {
        communityId: 2,
      },
    );

    expect(response.allUsers.nodes).not.toContainEqual(communityOne);
    expect(response.allUsers.nodes).toContainEqual(communityTwo);
  });
});
