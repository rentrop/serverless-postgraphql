import React, { Component } from 'react';
import classnames from 'classnames';
import { ContainerQuery } from 'react-container-query';
import { displayedInputs, statusIcons } from 'constants/StatusConstants';
import { LARGE_ITEM_MIN_WIDTH } from 'constants/containerQueryConstants';
import DateTime from 'components/Dashboard/CrossingListPage/CrossingListItem/DateTime';
import 'components/Dashboard/CrossingDetailPage/CrossingStatusHistory.css';
import InfiniteCrossingStatusHistoryPaginationContainer from 'components/Dashboard/CrossingStatusHistory/InfiniteCrossingStatusHistoryPaginationContainer';

import CrossingStatusHistorySpreadsheetLink from 'components/Dashboard/CrossingStatusHistory/CrossingStatusHistorySpreadsheetLink';

const containerQuery = {
  'CrossingStatusHistory--lg' : {
    minWidth: LARGE_ITEM_MIN_WIDTH,
  }
}

class CrossingStatusHistory extends Component {


  render() {
    const { history, showNames, crossingId } = this.props;

    return (
      <ContainerQuery query={containerQuery}>
        {(params) => (
          <div className={classnames(params, "CrossingStatusHistory")}>
            <CrossingStatusHistorySpreadsheetLink crossingId={crossingId} />
            <h2 className="CrossingStatusHistory__section-header">
              Crossing Status History
            </h2>
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
