import React from 'react';
import AdminCrossingDescriptionCell from './AdminCrossingDescriptionCell';
import AdminCrossingEditCells from './AdminCrossingEditCells';

class AdminCrossingListItem extends React.Component {

  render () {
    return (
      <div className='pa3 bg-black-05 ma3'>
        <AdminCrossingDescriptionCell crossing={this.props.crossing}/>
        <AdminCrossingEditCells />
      </div>
    );
  }
}

export default AdminCrossingListItem;
