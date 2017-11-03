import React, { Component } from 'react';
import { get } from 'lodash';
import classnames from 'classnames';
import { ContainerQuery } from 'react-container-query';
import { displayedInputs, statusIcons } from 'constants/StatusConstants';
import { LARGE_ITEM_MIN_WIDTH } from 'constants/containerQueryConstants';
import DateTime from 'components/Dashboard/CrossingListPage/CrossingListItem/DateTime';
import 'components/Dashboard/CrossingDetailPage/CrossingStatusHistory.css';

const containerQuery = {
  'CrossingStatusHistory--lg' : {
    minWidth: LARGE_ITEM_MIN_WIDTH,
  }
}

class CrossingStatusHistory extends Component {
  render() {
    const { history } = this.props;

    return (
      <ContainerQuery query={containerQuery}>
        {(params) => (
          <div className={classnames(params, "CrossingStatusHistory")}>
            <h2 className="CrossingStatusHistory__section-header">
              Crossing History
            </h2>
            <div className="CrossingStatusHistory__list-wrapper">
              {history.map((update, i) => {
                const user = get(update, 'userByCreatorId', {});
                const statusId = get(update, 'statusByStatusId.id', '--');
                const status = get(update, 'statusByStatusId.name', '--');
                const reason = get(update, 'statusReasonByStatusReasonId.name', 'Unconfirmed');
                const duration = get(update, 'statusDurationByStatusDurationId.name', '--');
                const createdAt = get(update, 'createdAt', '--');
                const notes = update.notes ? update.notes : '--';
                const shouldDisplay = displayedInputs[statusId];

                return (
                  <div className="CrossingStatusHistory__item" key={i}>
                    <div className="flexitem">
                      <DateTime datetime={createdAt} user={user} />
                    </div>
                    <div className="CrossingStatusHistory__item-details-flexcontainer">
                      <div className="CrossingStatusHistory__item-details">
                        <img src={statusIcons[statusId]} alt={shouldDisplay.status} className="CrossingStatusHistory__status-icon" />
                        <span>Status: {status}</span>
                      </div>
                      <div className="CrossingStatusHistory__item-details">
                        { shouldDisplay.reason &&
                            <div className="CrossingStatusHistory__item-subdetails">
                              <span>Reason</span>
                              <span className="strong">{reason}</span>
                            </div>
                        }
                        { shouldDisplay.duration &&
                            <div className="CrossingStatusHistory__item-subdetails">
                              <span>Estimated re-open</span>
                              <span className="strong">{duration}</span>
                            </div>
                        }
                      </div>
                      <div className="CrossingStatusHistory__item-details">
                        { shouldDisplay.notes &&
                            <div className="CrossingStatusHistory__item-subdetails">
                              <span>Notes to the public</span>
                              <span className="strong">{notes}</span>
                            </div>
                        }
                      </div>
                    </div>
                  </div>
                )
              })}
            </div>
          </div>
        )}
      </ContainerQuery>
    );
  }
}

export default CrossingStatusHistory;
