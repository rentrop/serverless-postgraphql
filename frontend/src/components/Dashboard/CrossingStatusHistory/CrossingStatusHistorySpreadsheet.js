import { graphql } from 'react-apollo';
import statusHistoryQuery from 'components/Dashboard/CrossingListPage/queries/statusHistoryQuery';
import React, { Component } from 'react';
import { get } from 'lodash';
import { CSVLink } from 'react-csv';
import FontAwesome from 'react-fontawesome';

class CrossingStatusHistorySpreadsheet extends Component {
  
  generateCsv() {
    const { crossingId } = this.props;
    const loading = !this.props.data || this.props.data.loading;
    if(loading) return "loading";

    const history = this.props.data.allStatusUpdates.edges;

    const headers = crossingId ? 
      [['Date & Time', 'Status', 'Reason', 'Duration', 'Notes']] :
      [['Crossing Name', 'Crossing Address', 'Date & Time', 'Status', 'Reason', 'Duration', 'Notes']];

    return headers.concat(
      history.map((update) => {
        const status = get(update, 'node.statusByStatusId.name');
        const reason = get(update, 'node.statusReasonByStatusReasonId.name', '');
        const duration = get(update, 'node.statusDurationByStatusDurationId.name', '');
        const createdAt = get(update, 'node.createdAt');
        const crossingName = get(update, 'node.crossingByCrossingId.name');
        const crossingAddress = get(update, 'node.crossingByCrossingId.humanAddress');
        const notes = get(update, 'node.notes', '');

        return crossingId ? 
          [createdAt, status, reason, duration, notes] :
          [crossingName, crossingAddress, createdAt, status, reason, duration, notes];
      })
    );
  }

  render() {
    const { loading } = !this.props.data || this.props.data.loading;

    if (loading) {
      return (<div>Loading</div>);
    };
    
    return (
      <CSVLink className='CrossingStatusHistory__spreadsheet-link' filename={'statusHistory.csv'} data={this.generateCsv()} >
        <FontAwesome size="lg" className="CrossingStatusHistory__spreadsheet-download-link" name='download' /><FontAwesome size="lg" name='file-excel-o' />
      </CSVLink>
    );
  }
}

export default graphql(statusHistoryQuery, {
  options: (ownProps) => ({
    variables: ownProps.variables
  })
})(CrossingStatusHistorySpreadsheet);
