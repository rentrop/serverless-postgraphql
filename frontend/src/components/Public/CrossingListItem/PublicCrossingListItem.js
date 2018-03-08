import React from 'react';
import { ContainerQuery } from 'react-container-query';
import classnames from 'classnames';

import CrossingCommunityList from 'components/Shared/CrossingListItem/CrossingCommunityList';
import Location from 'components/Shared/CrossingListItem/Location';
import DetailsItem from 'components/Public/CrossingListItem/DetailsItem';
import StatusIcon from 'components/Shared/StatusIcon';
import StatusName from 'components/Shared/StatusName';
import Date from 'components/Shared/DateTime/Date';
import Hour from 'components/Shared/DateTime/Hour';
import * as statusConstants from 'constants/StatusConstants';
import { LARGE_ITEM_MIN_WIDTH } from 'constants/containerQueryConstants';

import 'components/Public/CrossingListItem/PublicCrossingListItem.css';

const containerQuery = {
  'PublicCrossingListItem--lg': {
    minWidth: LARGE_ITEM_MIN_WIDTH,
  },
};

class PublicCrossingListItem extends React.Component {
  render() {
    const { crossing } = this.props;
    const {
      createdAt,
      userByCreatorId,
    } = crossing.statusUpdateByLatestStatusUpdateId;

    var show = [];
    switch (crossing.latestStatusId) {
      case statusConstants.OPEN:
        show = [];
        break;
      case statusConstants.CAUTION:
      case statusConstants.CLOSED:
        show = ['reason', 'notes'];
        break;
      case statusConstants.LONGTERM:
        show = ['reason', 'reopen', 'notes'];
        break;
      default:
        break;
    }

    const CrossingListItemJSX = (
      <div className="PublicCrossingListItem">
        <div className="PublicCrossingListItem__overview">
          <div className="PublicCrossingListItem__status-icon">
            <StatusIcon statusId={crossing.latestStatusId} />
          </div>
          <div className="PublicCrossingListItem__info">
            <div className="PublicCrossingListItem__status-name">
              <StatusName statusId={crossing.latestStatusId} />
            </div>
            <a href={`/map`} className="PublicCrossingListItem__crossing-name">
              {crossing.name}
            </a>
            <div>
              <Location crossing={crossing} />
              <CrossingCommunityList crossing={crossing} />
            </div>
          </div>
          <div className="PublicCrossingListItem__datetime">
            <div className="PublicCrossingListItem__datetime-date">
                <Date date={createdAt} />
            </div>
            <div>
              <Hour date={createdAt} />
            </div>
          </div>
        </div>
        <div className="PublicCrossingListItem__details">
          {show.includes('reason') && (
            <DetailsItem title="Reason">
              {/* TODO: Add actual reason */}
              Blah reason
            </DetailsItem>
          )}
          {show.includes('reopen') && (
            <DetailsItem title="Reason">
              {/* TODO: Add actual reopen */}
              Blah minutes
            </DetailsItem>
          )}
          {show.includes('notes') && (
            <DetailsItem title="Notes">
              {/* TODO: Add actual reopen */}
              {crossing.statusUpdateByLatestStatusUpdateId.notes}
            </DetailsItem>
          )}
        </div>
      </div>
    );

    if (!this.props.cqClassName) {
      return (
        <ContainerQuery query={containerQuery}>
          {params => (
            <div className={classnames(params)}>{CrossingListItemJSX}</div>
          )}
        </ContainerQuery>
      );
    }

    return (
      <div className={classnames(this.props.cqClassName)}>
        {CrossingListItemJSX}
      </div>
    );
  }
}

export default PublicCrossingListItem;
