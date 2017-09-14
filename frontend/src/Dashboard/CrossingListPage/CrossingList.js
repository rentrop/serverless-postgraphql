import React from 'react';
import { graphql } from 'react-apollo';
import gql from 'graphql-tag';
import Table from '../Table/Table';


const manageCrossingsHeaders = [{
  title: '',
  type: 'checkbox_select',
}, {
  title: 'Name',
  isFilterale: true,
  isSortable: true,
}, {
  title: 'Status',
  isFilterale: true,
  isSortable: true,
}, {
  title: 'Address',
  isFilterale: false,
  isSortable: false,
}, {
  title: 'Last Updated',
  isFilterale: false,
  isSortable: false,
}];


class CrossingList extends React.Component {
  // methods here
  parseLastUpdate(update) {
    const timestamp = update.createdAt
    // format date/time
    const actor = update.userByCreatorId.firstName + " " + update.userByCreatorId.lastName

    return (timestamp + " by " + actor);
  }
  state = {}

  render () {
    if (!this.props.data || this.props.data.loading) {
      return (<div>Loading</div>)
    }
    const allCrossings = this.props.data.allCrossings.nodes;

    if (allCrossings == null) {
      // TODO: add error logging
      return (<div>Error Loading Crossings</div>);
    }

    const crossingData = allCrossings.map((crossing) => {
      return [
        { isLinked: true, link: `#link`, content: crossing.name },
        crossing.statusUpdateByLatestStatusId.statusByStatusId.name,
        crossing.humanAddress,
        this.parseLastUpdate(crossing.statusUpdateByLatestStatusId)
      ]
    });

    return (
      <Table data={crossingData} headers={manageCrossingsHeaders} checkboxColumn={true} />
    );

  }

}

const allCrossings = gql`
  query allCrossings {
    allCrossings {
      nodes {
        id
        name
        description
        humanAddress
        statusUpdateByLatestStatusId {
          statusByStatusId {
            id
            name
          }
          createdAt
          userByCreatorId {
            firstName
            lastName
          }
        }
      }
    }
  }
`;


export default graphql(allCrossings)(CrossingList);
