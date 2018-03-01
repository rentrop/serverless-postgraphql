import React from 'react';
import 'components/Shared/CrossingMapPage/CrossingMapPage.css';
import { statusNames, statusIcons } from 'constants/StatusConstants';
import moment from 'moment';

class CrossingSidebarNearbyCrossingItem extends React.Component {
  render() {
    const {
      latestStatus,
      statusId,
      crossingId,
      crossingName,
      communityIds,
      allCommunities,
      selectCrossing,
    } = this.props;

    return (
      <div
        className="CrossingMapPage_sidebar-nearby-crossing-container"
        onClick={() => selectCrossing(crossingId)}
      >
        <div className="CrossingMapPage_sidebar-nearby-crossing-status-icon">
          <img
            src={statusIcons[statusId]}
            alt={statusNames[statusId]}
            className="CrossingStatusHistory__status-icon"
          />
        </div>
        <div className="CrossingMapPage_sidebar-nearby-crossing-details">
          <div className="CrossingMapPage_sidebar-nearby-crossing-details-status">
            {statusNames[statusId]}
          </div>
          <div className="CrossingMapPage_sidebar-nearby-crossing-details-name">
            {crossingName}
          </div>
          <div className="CrossingMapPage_sidebar-nearby-crossing-details-communities">
            {allCommunities &&
              communityIds
                .map(id => allCommunities.find(c => c.id === id).name)
                .join(', ')}
          </div>
        </div>
        <div className="CrossingMapPage_sidebar-nearby-crossing-update-datetime">
          <div className="CrossingMapPage_sidebar-nearby-crossing-update-datetime-date">
            {moment(latestStatus).calendar(null, {
              lastDay: '[Yesterday]',
              sameDay: '[Today]',
              sameElse: 'MM/DD/YYYY',
            })}
          </div>
          <div className="CrossingMapPage_sidebar-nearby-crossing-update-datetime-time">
            {moment(latestStatus).format('h:mm A')}
          </div>
        </div>
      </div>
    );
  }
}

export default CrossingSidebarNearbyCrossingItem;
