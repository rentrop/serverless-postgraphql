import React from 'react';
import moment from 'moment';
import { statusNames, statusIcons } from 'constants/StatusConstants';
import 'components/Shared/CrossingMapPage/CrossingSidebarNearbyCrossingItem.css';

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
            <a href="/">
            {/* TODO: Link to community */}
            {allCommunities &&
              communityIds
                .map(id => allCommunities.find(c => c.id === id).name)
                .join(', ')}
              </a>
          </div>
        </div>
        <div className="CrossingMapPage_sidebar-nearby-crossing-update-datetime">
          <div className="CrossingMapPage_sidebar-nearby-crossing-update-datetime-date">
            {moment(latestStatus).calendar(null, {
              lastDay: '[Yesterday]',
              sameDay: '[Today]',
              sameElse: 'M/D/YYYY',
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
