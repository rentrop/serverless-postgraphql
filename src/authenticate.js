const authenticate = function(lokka, userType, email, password) {
  describe('When signing in as a ' + userType, () => {
    describe('with the correct username and password', () => {
      it('should generate a valid jwtToken', async () => {
        const response = await lokka.send(`
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

        expect(response.authenticate.jwtToken).not.toBeNull();
      });
    });

    describe('with an incorrect username and password', () => {
      it('should generate a null jwtToken', async () => {
        const response = await lokka.send(`
          mutation($email:String!, $password:String!) {
            authenticate(input: {email: $email, password: $password}) {
              jwtToken
            }
          }
        `,
        {
          email: email,
          password: "wrong"
        });

        expect(response.authenticate.jwtToken).toBeNull();
      });
    });
  });
}

export default authenticate;
