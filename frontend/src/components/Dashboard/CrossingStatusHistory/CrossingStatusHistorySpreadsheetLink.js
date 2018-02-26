import CrossingStatusHistorySpreadsheet from 'components/Dashboard/CrossingStatusHistory/CrossingStatusHistorySpreadsheet';
import FontAwesome from 'react-fontawesome';
import React, { Component } from 'react';

class CrossingStatusHistorySpreadsheetLink extends Component {
  state = {
    loadSpreadsheet: false,
  };

  generateSpreadsheet = () => {
    this.setState({ loadSpreadsheet: true });
  };

  render() {
    const { loadSpreadsheet } = this.state;
    const { crossingId } = this.props;

    const variables = crossingId ? { crossingId: crossingId } : {};

    return loadSpreadsheet ? (
      <CrossingStatusHistorySpreadsheet variables={variables} />
    ) : (
      <a
        className="CrossingStatusHistory__spreadsheet-link"
        onClick={this.generateSpreadsheet}
      >
        <FontAwesome size="lg" name="file-excel-o" />
      </a>
    );
  }
}

export default CrossingStatusHistorySpreadsheetLink;
