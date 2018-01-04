import React, { Component } from 'react';
import CrossingListItem from 'components/Dashboard/CrossingListPage/CrossingListItem/CrossingListItem';
import { graphql } from 'react-apollo';
import gql from 'graphql-tag';
import statusUpdateFragment from 'components/Dashboard/CrossingListPage/queries/statusUpdateFragment';
import crossingFragment from 'components/Dashboard/CrossingListPage/queries/crossingFragment';
import 'components/Dashboard/CrossingMapPage/CrossingMapPage.css';

class CrossingMapSidebar extends Component {

  render() {
    const { crossingId, hideSidebar } = this.props;

    const isLoading = (
      !this.props.data ||
       this.props.data.loading
    );

    if ( isLoading ) { return (<div>Loading</div>) };

    const crossing = this.props.data.crossingById;

    return (
      <div className="CrossingMapSidebar">
        <div onClick={() => hideSidebar(true)}> hide sidebar </div>
        { crossingId ?
          (
            <CrossingListItem
              key={crossing.id}
              crossing={crossing}
              // reasons={statusReasons} 
              // durations={statusDurations}
              // currentUser={currentUser} 
              />
          ) :
          (<div>NOPE</div>)
        }
        
      </div>
    );
  }
}

const crossingQuery = gql`
  query crossingById($crossingId:Int!) {
    crossingById(id:$crossingId) {
      id
      ...crossingInfo
      ...statusUpdateInfo  
    }
  }
  ${crossingFragment}
  ${statusUpdateFragment}
`;

export default graphql(crossingQuery, {
  options: (ownProps) => ({
    variables: {
      crossingId: ownProps.crossingId
    }
  })
})(CrossingMapSidebar);
