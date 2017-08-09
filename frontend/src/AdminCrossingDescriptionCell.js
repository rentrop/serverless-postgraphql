import React from 'react'

class AdminCrossingDescriptionCell extends React.Component {

  render () {
    return (
      <div className='pa3 bg-black-05 ma3'>
        <div className='pt3'>
          {this.props.crossing.name}&nbsp;
        </div>
        <div className="pt3">
          {this.props.crossing.humanCoordinates}
        </div>
        <div className='pt3'>
          User Readable Address
        </div>
      </div>
    );
  }
}

export default AdminCrossingDescriptionCell;
