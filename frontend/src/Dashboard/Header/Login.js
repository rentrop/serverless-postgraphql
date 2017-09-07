import React, { Component } from 'react';
import { Redirect } from 'react-router-dom';
import { gql, graphql } from 'react-apollo';

class Login extends Component {
  state = {
    redirectToReferrer: false,
    email: '',
    password: ''
  }

  handleEmailChange(e) {
    this.setState({email: e.target.value});
  }

  handlePasswordChange(e) {
    this.setState({password: e.target.value});
  }

  handleSubmit(e) {
    e.preventDefault();
    var email = this.state.email.trim();
    var password = this.state.password.trim();

    this.props.mutate({
      variables: { email: email, password: password }
    })
    .then(({ data }) => {
      console.log('got data', data);
      localStorage.setItem('jwt_user_token', data.authenticate.jwtToken);
      window.location.reload();
    }).catch((error) => {
      console.log('there was an error sending the query', error);
    });
  }

  render() {    
    return (
      <div>
        <form onSubmit={this.handleSubmit.bind(this)}>
          <input type="text"
                 value={this.state.email}
                 placeholder="Email"
                 onChange={this.handleEmailChange.bind(this)}/>
          <input type="password"
                 value={this.state.password}
                 placeholder="Password"
                 onChange={this.handlePasswordChange.bind(this)}/>
          <input type="submit"/>
        </form>
      </div>
    )
  }
}

const logInUser = gql `
  mutation($email: String!, $password: String!) {
    authenticate(input: {email: $email, password: $password}) {
      jwtToken
    }
  }
`;

export default graphql(logInUser)(Login);
