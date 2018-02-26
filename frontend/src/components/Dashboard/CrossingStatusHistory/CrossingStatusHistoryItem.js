import React, { Component } from 'react';
import { get } from 'lodash';
import { displayedInputs, statusIcons } from 'constants/StatusConstants';
import DateTime from 'components/Dashboard/CrossingListPage/CrossingListItem/DateTime';
import 'components/Dashboard/CrossingStatusHistory/CrossingStatusHistory.css';

class CrossingStatusHistoryItem extends Component {
  render() {
    const { update, showNames, measure } = this.props;

    const user = get(update, 'userByCreatorId', {});
    const statusId = get(update, 'statusByStatusId.id', '--');
    const status = get(update, 'statusByStatusId.name', '--');
    const reason = get(
      update,
      'statusReasonByStatusReasonId.name',
      'Unconfirmed',
    );
    const duration = get(update, 'statusDurationByStatusDurationId.name', '--');
    const createdAt = get(update, 'createdAt', '--');
    const crossingId = get(update, 'crossingId');
    const crossingName = get(update, 'crossingByCrossingId.name');
    const notes = update.notes ? update.notes : '--';
    const shouldDisplay = displayedInputs[statusId];

    return (
      <div className="CrossingStatusHistory__item">
        {showNames ? (
          <div className="CrossingListItemFlexItem">
            <a
              href={`/dashboard/crossing/${crossingId}`}
              className="CrossingName"
            >
              {crossingName}
            </a>
          </div>
        ) : null}

        <div className="flexitem">
          <DateTime datetime={createdAt} user={user} />
        </div>

        <div className="CrossingStatusHistory__item-details-flexcontainer">
          <div className="CrossingStatusHistory__item-details">
            <img
              onLoad={measure}
              src={statusIcons[statusId]}
              alt={shouldDisplay.status}
              className="CrossingStatusHistory__status-icon"
            />
            <span>Status: {status}</span>
          </div>
          <div className="CrossingStatusHistory__item-details">
            {shouldDisplay.reason && (
              <div className="CrossingStatusHistory__item-subdetails">
                <span>Reason</span>
                <span className="strong">{reason}</span>
              </div>
            )}
            {shouldDisplay.duration && (
              <div className="CrossingStatusHistory__item-subdetails">
                <span>Estimated re-open</span>
                <span className="strong">{duration}</span>
              </div>
            )}
          </div>
          <div className="CrossingStatusHistory__item-details">
            {shouldDisplay.notes && (
              <div className="CrossingStatusHistory__item-subdetails">
                <span>Notes to the public</span>
                <span className="strong">{notes}</span>
              </div>
            )}
          </div>
        </div>
      </div>
    );
  }
}

export default CrossingStatusHistoryItem;
