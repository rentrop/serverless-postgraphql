import React, { Component } from 'react';
import { gql, graphql } from 'react-apollo';

import 'components/Dashboard/LoginPage/LoginPage.css';

class LoginPage extends Component {
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
    var email = this.state.email.trim().toLowerCase();
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
      <div className="LoginPage">
        <div className="LoginPage__form-controls">
          <h1 className="LoginPage__h1"> Log in to the CTXFloods Dashboard </h1>
          <form className="LoginPage__form" onSubmit={this.handleSubmit.bind(this)}>
            <input className="LoginPage__input"
                   type="text"
                   value={this.state.email}
                   placeholder="Email"
                   onChange={this.handleEmailChange.bind(this)}/>
            <input className="LoginPage__input"
                   type="password"
                   value={this.state.password}
                   placeholder="Password"
                   onChange={this.handlePasswordChange.bind(this)}/>
            <input type="submit" className="LoginPage__submit"/>
          </form>
        </div>
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

export default graphql(logInUser)(LoginPage);
