import React from 'react';
import Crossing from './Crossing';
import { graphql } from 'react-apollo';
import gql from 'graphql-tag';

class CrossingList extends React.Component {

  render () {
    if (this.props.data.loading) {
      return (<div>Loading</div>)
    }

    if (this.props.data.allCrossings == null) {
      // TODO: add error logging
      return (<div>Error Loading Crossings</div>);
    }

    return (
      <div className='w-100 flex justify-center'>
        <div className='w-100' style={{ maxWidth: 400 }}>
          {this.props.data.allCrossings.nodes.map((crossing) =>
            <Crossing 
              key={crossing.id}
              crossing={crossing}
              refresh={() => this.props.data.refetch()}
            />
          )}
        </div>
      </div>
    );
  }

}

const allCrossings = gql`
  query allCrossings {
    allCrossings {
      nodes {
        id
        name
        latestStatus {
          statusByStatusId {
            name
          }
          notes
          userByCreatorId {
            id
            firstName
            lastName
          }
        }
      }
    }
  }
`;

export default graphql(allCrossings)(CrossingList);
