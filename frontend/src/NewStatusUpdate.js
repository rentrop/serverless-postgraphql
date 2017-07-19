import React, { Component } from 'react';
import { gql, graphql, compose } from 'react-apollo';

class NewStatusUpdate extends Component {
  state = {
    redirectToReferrer: false,
    crossingId: '',
    statusId: '',
    notes: ''
  }

  handleCrossingChange(e) {
    this.setState({crossingId: e.target.value});
  }

  handleStatusChange(e) {
    this.setState({statusId: e.target.value});
  }

  handleNotesChange(e) {
    this.setState({notes: e.target.value});
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.mutate({
      variables: { statusId: this.state.statusId, crossingId: this.state.crossingId, notes: this.state.notes }
    })
      .then(({ data }) => {
        console.log('got data', data);
      }).catch((error) => {
        console.log('there was an error sending the query', error);
      });
  }

  render() {
    return (
      <form onSubmit={this.handleSubmit.bind(this)}>
        <select name="select-crossing" value={this.state.crossingId} onChange={this.handleCrossingChange.bind(this)}>
          {this.props.data.loading ? null : this.props.data.allCrossings.nodes.map((crossing) =>
            <option key={crossing.id} value={crossing.id}>{crossing.name}</option>
          )}
        </select>
        <select name="select-status" value={this.state.statusId} onChange={this.handleStatusChange.bind(this)}>
          {this.props.data.loading ? null : this.props.data.allStatuses.nodes.map((status) =>
            <option key={status.id} value={status.id}>{status.name}</option>
          )}
        </select>
        <input type="text"
          value={this.state.notes}
          placeholder="Notes"
          onChange={this.handleNotesChange.bind(this)}/>
        <input type="submit"/>
      </form>
    );
  }
}

const createStatusUpdate = gql`
  mutation($statusId: Int!, $crossingId: Int!, $notes: String!) {
    newStatusUpdate(input:
      {
        statusId: $statusId,
        crossingId: $crossingId,
        notes: $notes
      }) {
      statusUpdate {
        id
      }
    }
  }
`;

const getDropdownData = gql`
  {
    allCrossings {
      nodes {
        id
        name
      }
    }
    allStatuses {
      nodes {
        id,
        name
      }
    }
  }
`;

export default compose(graphql(createStatusUpdate),graphql(getDropdownData))(NewStatusUpdate);
