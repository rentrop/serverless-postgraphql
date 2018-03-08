import React from 'react';

import { statusNames, statusIcons } from 'constants/StatusConstants';
import Date from 'components/Shared/DateTime/Date';
import Hour from 'components/Shared/DateTime/Hour';

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
          {/*
            TODO: Replace with <CrossingCommunityList crossing={crossing} />
            Then we can get rid of the allCommunities prop and doing a find in the render
          */}
          <div className="CrossingMapPage_sidebar-nearby-crossing-details-communities">
            <a href="/">
              {allCommunities &&
                communityIds
                  .map(id => allCommunities.find(c => c.id === id).name)
                  .join(', ')}
            </a>
          </div>
        </div>
        <div className="CrossingMapPage_sidebar-nearby-crossing-update-datetime">
          <div className="CrossingMapPage_sidebar-nearby-crossing-update-datetime-date">
            <Date date={latestStatus} />
          </div>
          <div className="CrossingMapPage_sidebar-nearby-crossing-update-datetime-time">
            <Hour date={latestStatus} />
          </div>
        </div>
      </div>
    );
  }
}

export default CrossingSidebarNearbyCrossingItem;
