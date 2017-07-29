import React from 'react';
import User from './User';
import { graphql } from 'react-apollo';
import gql from 'graphql-tag';

class UserList extends React.Component {

  render () {
    if (this.props.data.loading) {
      return (<div>Loading</div>)
    }

    if (this.props.data.allUsers == null) {
      // TODO: add error logging
      return (<div>Error Loading Users</div>);
    }

    return (
      <div className='w-100 flex justify-center'>
        <div className='w-100' style={{ maxWidth: 400 }}>
          {this.props.data.allUsers.nodes.map((user) =>
            <User 
              key={user.id}
              user={user}
              refresh={() => this.props.data.refetch()}
            />
          )}
        </div>
      </div>
    );
  }

}

const allUsers = gql`
  {
    allUsers {
      nodes {
        id
        firstName
        lastName
      }
    }
  }
`;

export default graphql(allUsers)(UserList);
