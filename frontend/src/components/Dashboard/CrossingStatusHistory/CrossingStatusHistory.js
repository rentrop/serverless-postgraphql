import React, { Component } from 'react';
import classnames from 'classnames';
import { ContainerQuery } from 'react-container-query';
import { LARGE_ITEM_MIN_WIDTH } from 'constants/containerQueryConstants';
import 'components/Dashboard/CrossingStatusHistory/CrossingStatusHistory.css';
import InfiniteCrossingStatusHistoryPaginationContainer from 'components/Dashboard/CrossingStatusHistory/InfiniteCrossingStatusHistoryPaginationContainer';

import CrossingStatusHistorySpreadsheetLink from 'components/Dashboard/CrossingStatusHistory/CrossingStatusHistorySpreadsheetLink';

const containerQuery = {
  'CrossingStatusHistory--lg' : {
    minWidth: LARGE_ITEM_MIN_WIDTH,
  }
}

class CrossingStatusHistory extends Component {


  render() {
    const { showNames, crossingId } = this.props;

    return (
      <ContainerQuery query={containerQuery}>
        {(params) => (
          <div className={classnames(params, "CrossingStatusHistory")}>
            <div className="CrossingStatusHistory_header-background">
              <h2 className="CrossingStatusHistory__section-header">
                <div className="CrossingStatusHistory__section-header--title">Crossing Status History</div>
                <CrossingStatusHistorySpreadsheetLink crossingId={crossingId} />
              </h2>
            </div>
            <div className="CrossingStatusHistory__list-wrapper">
              <InfiniteCrossingStatusHistoryPaginationContainer crossingId={crossingId} showNames={showNames}/>
            </div>
          </div>
        )}
      </ContainerQuery>
    );
  }
}

export default CrossingStatusHistory;
