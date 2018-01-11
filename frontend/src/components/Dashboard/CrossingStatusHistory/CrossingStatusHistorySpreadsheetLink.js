import CrossingStatusHistorySpreadsheet from 'components/Dashboard/CrossingStatusHistory/CrossingStatusHistorySpreadsheet';
import React, { Component } from 'react';

class CrossingStatusHistorySpreadsheetLink extends Component {
  state = {
    loadSpreadsheet: false,
  };

  generateSpreadsheet = () => {
    this.setState({loadSpreadsheet: true});
  }

  render() {
    const { loadSpreadsheet } = this.state;
    const { crossingId } = this.props;

    const variables = crossingId ? { crossingId: crossingId } : {};

    return (
      loadSpreadsheet ? <CrossingStatusHistorySpreadsheet variables={variables} /> : <a onClick={this.generateSpreadsheet}>Generate Spreadsheet</a>
    );
  }
}

export default CrossingStatusHistorySpreadsheetLink;
