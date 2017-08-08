import HttpTransport from 'lokka-transport-http';
import Lokka from 'lokka';
import { endpoint } from './endpoints';

const anonLokka = new Lokka({transport: new HttpTransport(endpoint)});

describe('When searching users', () => {
  it('should search by community name correctly', async () => {
    const response = await anonLokka.send(`
      query($communityName:String) {
        searchUsers(search: $communityName) {
          nodes {
            communityId
          }
        }
      }
    `,
    {
      communityName: "texas"
    });

    expect(response.searchUsers.nodes).toContainEqual({ communityId: 1 });
    expect(response.searchUsers.nodes).not.toContainEqual({ communityId: 2 });    
  });

  it('should search by first name correctly', async () => {
    const response = await anonLokka.send(`
      query($firstName:String) {
        searchUsers(search: $firstName) {
          nodes {
            id
          }
        }
      }
    `,
    {
      firstName: "super"
    });

    expect(response.searchUsers.nodes).toMatchSnapshot();    
  });

  it('should search by last name correctly', async () => {
    const response = await anonLokka.send(`
      query($lastName:String) {
        searchUsers(search: $lastName) {
          nodes {
            id
          }
        }
      }
    `,
    {
      lastName: "editor"
    });

    expect(response.searchUsers.nodes).toMatchSnapshot();    
  });
});
