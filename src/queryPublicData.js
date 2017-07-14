// TODO: Figure out how to use this in the community editor/admin/super admin tests
const queryPublicData = function(lokka) {
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
}

export default queryPublicData;
