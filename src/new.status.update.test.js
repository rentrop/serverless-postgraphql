import HttpTransport from 'lokka-transport-http';
import Lokka from 'lokka';
import queryPublicData from './queryPublicData';
import authenticate from './authenticate';

const superAdminEmail = 'superadmin@flo.ods';
const communityAdminEmail = 'admin@community.floods';
const communityEditorEmail = 'editor@community.floods';
const everyPassword = 'texasfloods';

const anonLokka = new Lokka({transport: new HttpTransport('http://localhost:5000/graphql')});
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

function shouldWork(username, password, status, notes, reason, duration, extra_description) {
  var originalStatusId;
  var newStatusId;
  var crossing;
  var lokka;

  describe('as ' + username + ' ' + (extra_description || ''), () => {
    beforeAll(async (done) => {
      getToken(username, password).then((token) => {
        const headers = {
          'Authorization': 'Bearer '+ token
        };
        lokka = new Lokka({transport: new HttpTransport('http://localhost:5000/graphql', {headers})});
        done();
      });
    });

    describe('before updating', () => {
      it('should add a new crossing', async () => {
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

        crossing = response.newCrossing.crossing.id;
        expect(response).not.toBeNull();
      });

      it('should give it a status', async () => {
        const response = await lokka.send(`
          mutation($crossing:Int) {
            newStatusUpdate(input: {
              statusId: 1,
              crossingId: $crossing,
              notes: "New"
            }) {
              statusUpdate {
                notes
              }
            }
          }
        `,
        {
          crossing: crossing
        });

        expect(response.newStatusUpdate.statusUpdate.notes).toMatchSnapshot();
      });

      it('it should get the current status', async () => {
        const response = await lokka.send(`
          query($crossing:Int!) {
            crossingById(id:$crossing) {
              latestStatus {
                id
              }
            }
          }
        `,
        {
          crossing: crossing
        });

        originalStatusId = response.crossingById.latestStatus.id;
        expect(response).not.toBeNull();
      });
    });

    it('should update the status', async () => {
      const response = await lokka.send(`
        mutation($status:Int,$crossing:Int,$notes:String,$reason:Int,$duration:Int) {
          newStatusUpdate(input: {
            statusId: $status,
            crossingId: $crossing,
            notes: $notes,
            statusReasonId: $reason,
            statusDurationId: $duration
          }) {
            statusUpdate {
              id
              notes
            }
          }
        }
      `,
      {
        status: status,
        crossing: crossing,
        notes: notes,
        reason: reason,
        duration: duration
      });

      newStatusId = response.newStatusUpdate.statusUpdate.id;
      expect(response.newStatusUpdate.statusUpdate.notes).toMatchSnapshot();
    });

    it('the new status should show up in the DB', async () => {
      const response = await lokka.send(`
        query($crossing:Int!) {
          crossingById(id:$crossing) {
            latestStatus {
              id
              notes
            }
          }
        }
      `,
      {
        crossing: crossing
      });

      expect(response.crossingById.latestStatus.id).not.toEqual(originalStatusId);
      expect(response.crossingById.latestStatus.id).toEqual(newStatusId);
      expect(response.crossingById.latestStatus.notes).toMatchSnapshot();
    });
  });
}

function shouldFail(username, password, status, crossing, notes, reason, duration, extra_description) {
  var originalStatusId;
  var newStatusId;
  var lokka;

  describe('as ' + username + ' ' + (extra_description || ''), () => {
    beforeAll(async (done) => {
      getToken(username, password).then((token) => {
        const headers = {
          'Authorization': 'Bearer '+ token
        };
        lokka = new Lokka({transport: new HttpTransport('http://localhost:5000/graphql', {headers})});
        done();
      });
    });

    it('should fail to update the status', async () => {
      try {
        const response = await lokka.send(`
          mutation($status:Int,$crossing:Int,$notes:String,$reason:Int,$duration:Int) {
            newStatusUpdate(input: {
              statusId: $status,
              crossingId: $crossing,
              notes: $notes,
              statusReasonId: $reason,
              statusDurationId: $duration
            }) {
              statusUpdate {
                id
                notes
              }
            }
          }
        `,
        {
          status: status,
          crossing: crossing,
          notes: notes,
          reason: reason,
          duration: duration
        });
      } catch(e) {
        expect(e).toMatchSnapshot();
      }
    });
  });
}

describe('When updating the status of a crossing', () => {
  describe('To OPEN', () => {
    describe('with no REASON or DURATION', () => {
      shouldWork(superAdminEmail, everyPassword, 1, 'OPEN with no REASON or DURATION');
      shouldWork(communityAdminEmail, everyPassword, 1, 'OPEN with no REASON or DURATION',null,null,'In the same community as the crossing'); 
      shouldFail(communityAdminEmail, everyPassword, 1, 7, 'OPEN with no REASON or DURATION',null,null,'In another community without the crossing');
      shouldWork(communityEditorEmail, everyPassword, 1, 'OPEN with no REASON or DURATION',null,null,'In the same community as the crossing'); 
      shouldFail(communityEditorEmail, everyPassword, 1, 7, 'OPEN with no REASON or DURATION',null,null,'In another community without the crossing');
    });

    describe('with REASON', () => {
      shouldFail(superAdminEmail, everyPassword, 1, 3, 'OPEN with REASON', 1);
      shouldFail(communityAdminEmail, everyPassword, 1, 3, 'OPEN with REASON', 1);
      shouldFail(communityEditorEmail, everyPassword, 1, 3, 'OPEN with REASON', 1);
    });

    describe('with DURATION', () => {
      shouldFail(superAdminEmail, everyPassword, 1, 3, 'OPEN with DURATION', null, 1);
      shouldFail(communityAdminEmail, everyPassword, 1, 3, 'OPEN with DURATION', null, 1);
      shouldFail(communityEditorEmail, everyPassword, 1, 3, 'OPEN with DURATION', null, 1);
    });

    describe('with REASON and DURATION', () => {
      shouldFail(superAdminEmail, everyPassword, 1, 3, 'OPEN with REASON and DURATION', 1, 1);
      shouldFail(communityAdminEmail, everyPassword, 1, 3, 'OPEN with REASON and DURATION', 1, 1);
      shouldFail(communityEditorEmail, everyPassword, 1, 3, 'OPEN with REASON and DURATION', 1, 1);
    });
  });

  describe('To CLOSED', () => {
    describe('with no REASON or DURATION', () => {
      shouldFail(superAdminEmail, everyPassword, 2, 3, 'CLOSED with no REASON or DURATION');
      shouldFail(communityAdminEmail, everyPassword, 2, 3, 'CLOSED with no REASON or DURATION');
      shouldFail(communityEditorEmail, everyPassword, 2, 3, 'CLOSED with no REASON or DURATION');
    });

    describe('with REASON', () => {
      describe('that matches status', () => {
        shouldWork(superAdminEmail, everyPassword, 2, 'CLOSED with REASON', 1);
        shouldWork(communityAdminEmail, everyPassword, 2, 'CLOSED with REASON', 1, null, 'In the same community as the crossing'); 
        shouldFail(communityAdminEmail, everyPassword, 2, 7, 'CLOSED with REASON', 1, null, 'In another community without the crossing');
        shouldWork(communityEditorEmail, everyPassword, 2, 'CLOSED with REASON', 1, null, 'In the same community as the crossing'); 
        shouldFail(communityEditorEmail, everyPassword, 2, 7, 'CLOSED with REASON', 1, null, 'In another community without the crossing');
      });
      describe('that does not match status', () => {
        shouldFail(superAdminEmail, everyPassword, 2, 3, 'CLOSED with REASON', 2);
        shouldFail(communityAdminEmail, everyPassword, 2, 3, 'CLOSED with REASON', 2); 
        shouldFail(communityEditorEmail, everyPassword, 2, 3, 'CLOSED with REASON', 2); 
      });
    });

    describe('with DURATION', () => {
      shouldFail(superAdminEmail, everyPassword, 2, 3, 'CLOSED with DURATION', null, 1);
      shouldFail(communityAdminEmail, everyPassword, 2, 3, 'CLOSED with DURATION', null, 1);
      shouldFail(communityEditorEmail, everyPassword, 2, 3, 'CLOSED with DURATION', null, 1);
    });

    describe('with REASON and DURATION', () => {
      shouldFail(superAdminEmail, everyPassword, 2, 3, 'CLOSED with REASON and DURATION', 1, 1);
      shouldFail(communityAdminEmail, everyPassword, 2, 3, 'CLOSED with REASON and DURATION', 1, 1);
      shouldFail(communityEditorEmail, everyPassword, 2, 3, 'CLOSED with REASON and DURATION', 1, 1);
    });
  });

  describe('To CAUTION', () => {
    describe('with no REASON or DURATION', () => {
      shouldWork(superAdminEmail, everyPassword, 3, 'CAUTION with no REASON or DURATION');
      shouldWork(communityAdminEmail, everyPassword, 3, 'CAUTION with no REASON or DURATION',null,null,'In the same community as the crossing');
      shouldFail(communityAdminEmail, everyPassword, 3, 7, 'CAUTION with no REASON or DURATION',null,null,'In another community without the crossing');
      shouldWork(communityEditorEmail, everyPassword, 3, 'CAUTION with no REASON or DURATION',null,null,'In the same community as the crossing');
      shouldFail(communityEditorEmail, everyPassword, 3, 7, 'CAUTION with no REASON or DURATION',null,null,'In another community without the crossing');
    });

    describe('with REASON', () => {
      shouldFail(superAdminEmail, everyPassword, 3, 3, 'CAUTION with REASON', 1);
      shouldFail(communityEditorEmail, everyPassword, 3, 3, 'CAUTION with REASON', 1);
      shouldFail(communityAdminEmail, everyPassword, 3, 3, 'CAUTION with REASON', 1);
    });

    describe('with DURATION', () => {
      shouldFail(superAdminEmail, everyPassword, 3, 3, 'CAUTION with DURATION', null, 1);
      shouldFail(communityAdminEmail, everyPassword, 3, 3, 'CAUTION with DURATION', null, 1);
      shouldFail(communityEditorEmail, everyPassword, 3, 3, 'CAUTION with DURATION', null, 1);
    });

    describe('with REASON and DURATION', () => {
      shouldFail(superAdminEmail, everyPassword, 3, 3, 'CAUTION with REASON and DURATION', 1, 1);
      shouldFail(communityAdminEmail, everyPassword, 3, 3, 'CAUTION with REASON and DURATION', 1, 1);
      shouldFail(communityEditorEmail, everyPassword, 3, 3, 'CAUTION with REASON and DURATION', 1, 1);
    });
  });

  describe('To LONG TERM CLOSURE', () => {
    describe('with no REASON or DURATION', () => {
      shouldFail(superAdminEmail, everyPassword, 4, 3, 'LONG TERM CLOSURE with no REASON or DURATION');
      shouldFail(communityAdminEmail, everyPassword, 4, 3, 'LONG TERM CLOSURE with no REASON or DURATION');
      shouldFail(communityEditorEmail, everyPassword, 4, 3, 'LONG TERM CLOSURE with no REASON or DURATION');
    });

    describe('with REASON', () => {
      shouldFail(superAdminEmail, everyPassword, 4, 3, 'LONG TERM CLOSURE with REASON', 1);
      shouldFail(communityAdminEmail, everyPassword, 4, 3, 'LONG TERM CLOSURE with REASON', 1);
      shouldFail(communityEditorEmail, everyPassword, 4, 3, 'LONG TERM CLOSURE with REASON', 1);
    });

    describe('with DURATION', () => {
      shouldFail(superAdminEmail, everyPassword, 4, 3, 'LONG TERM CLOSURE with DURATION', null, 1);
      shouldFail(communityEditorEmail, everyPassword, 4, 3, 'LONG TERM CLOSURE with DURATION', null, 1);
      shouldFail(communityEditorEmail, everyPassword, 4, 3, 'LONG TERM CLOSURE with DURATION', null, 1);
    });

    describe('with REASON and DURATION', () => {
      describe('and both match status', () => {
        shouldWork(superAdminEmail, everyPassword, 4, 'LONG TERM CLOSURE with REASON and DURATION', 2, 2);
        shouldWork(communityAdminEmail, everyPassword, 4, 'LONG TERM CLOSURE with REASON and DURATION', 2, 2,'In the same community as the crossing');
        shouldFail(communityAdminEmail, everyPassword, 4, 7, 'LONG TERM CLOSURE with REASON and DURATION', 2, 2,'In another community without the crossing');
        shouldWork(communityEditorEmail, everyPassword, 4, 'LONG TERM CLOSURE with REASON and DURATION', 2, 2,'In the same community as the crossing');
        shouldFail(communityEditorEmail, everyPassword, 4, 7, 'LONG TERM CLOSURE with REASON and DURATION', 2, 2,'In another community without the crossing');
      });
      describe('and reason matches status', () => {
        shouldFail(superAdminEmail, everyPassword, 4, 3, 'LONG TERM CLOSURE with REASON and DURATION', 2, 1);
        shouldFail(communityAdminEmail, everyPassword, 4, 3, 'LONG TERM CLOSURE with REASON and DURATION', 2, 1);
        shouldFail(communityEditorEmail, everyPassword, 4, 3, 'LONG TERM CLOSURE with REASON and DURATION', 2, 1);
      });
      describe('and duration matches status', () => {
        shouldFail(superAdminEmail, everyPassword, 4, 3, 'LONG TERM CLOSURE with REASON and DURATION', 1, 2);
        shouldFail(communityAdminEmail, everyPassword, 4, 3, 'LONG TERM CLOSURE with REASON and DURATION', 1, 2);
        shouldFail(communityEditorEmail, everyPassword, 4, 3, 'LONG TERM CLOSURE with REASON and DURATION', 1, 2);
      });
      describe('and neither matches status', () => {
        shouldFail(superAdminEmail, everyPassword, 4, 3, 'LONG TERM CLOSURE with REASON and DURATION', 1, 1);
        shouldFail(communityAdminEmail, everyPassword, 4, 3, 'LONG TERM CLOSURE with REASON and DURATION', 1, 1);
        shouldFail(communityEditorEmail, everyPassword, 4, 3, 'LONG TERM CLOSURE with REASON and DURATION', 1, 1);
      });
    });
  });
});
