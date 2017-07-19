import React from 'react'

class User extends React.Component {

  render () {
    return (
      <div className='pa3 bg-black-05 ma3'>
        <div className='pt3'>
          {this.props.user.firstName} {this.props.user.lastName}&nbsp;
        </div>
        <div className='pt3'>
          {this.props.user.id}&nbsp;
        </div>
      </div>
    );
  }
}

export default User;
