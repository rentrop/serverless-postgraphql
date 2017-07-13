import HttpTransport from 'lokka-transport-http';
import Lokka from 'lokka';
import queryPublicData from './queryPublicData';
import authenticate from './authenticate';

const anonLokka = new Lokka({transport: new HttpTransport('http://localhost:5000/graphql')});

describe('As an anonymous user', () => {
  queryPublicData(anonLokka);
  authenticate(anonLokka, 'super admin', 'superadmin@flo.ods', 'texasfloods');
  authenticate(anonLokka, 'community admin', 'admin@community.floods', 'texasfloods');
  authenticate(anonLokka, 'community editor', 'editor@community.floods', 'texasfloods');

  it('should fail to get the current user', async () => {
    try {
      const response = await anonLokka.send(`
      {
        currentUser {
          id
        }
      }
    `);
    } catch(e) {
      expect(e).toMatchSnapshot();
    }
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
});

// TODO:

// should be able to connect to the server

// for anon/edit/admin/super


// REGISTER USERS
// THIS PART WILL BE TRICKY SO I'M GONNA CHECK IN BEFORE BREAKING THE SCHEMA
// AS OF RIGHT NOW EVERYTHING ABOVE THIS IS WORKING BASED ON MY MANUAL TESTING
