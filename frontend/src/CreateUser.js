import React, { Component } from 'react';
import { gql, graphql } from 'react-apollo';

class CreateUser extends Component {
  state = {
    redirectToReferrer: false,
    firstname: '',
    lastname:'',
    email: '',
    password: ''
  }

  handleFirstNameChange(e) {
    this.setState({firstname: e.target.value});
  }

  handleLastNameChange(e) {
    this.setState({lastname: e.target.value});
  }

  handleEmailChange(e) {
    this.setState({email: e.target.value});
  }
  
  handlePasswordChange(e) {
    this.setState({password: e.target.value});
  }

  handleSubmit(e) {
    e.preventDefault();
    var firstname = this.state.firstname.trim();
    var lastname = this.state.lastname.trim();
    var email = this.state.email.trim();
    var password = this.state.password.trim();

    this.props.mutate({
      variables: { firstName: firstname, lastName: lastname, email: email, password: password }
    })
    .then(({ data }) => {
      console.log('got data', data);
    }).catch((error) => {
      console.log('there was an error sending the query', error);
    });
  }

  render() {    
    return (
      <div>
        <p>Create a User</p>
        <form onSubmit={this.handleSubmit.bind(this)}>
          <input type="text"
                 value={this.state.firstname}
                 placeholder="First Name"
                 onChange={this.handleFirstNameChange.bind(this)}/>
          <input type="text"
                 value={this.state.lastname}
                 placeholder="Last Name"
                 onChange={this.handleLastNameChange.bind(this)}/>
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

const registerPerson = gql `
  mutation ($firstName: String!, $lastName: String!, $email: String!, $password: String!) {
    registerPerson(input: {firstName: $firstName, lastName: $lastName, email: $email, password: $password}) {
      person {
        id
      }
    }
  }
`;

export default graphql(registerPerson)(CreateUser);
