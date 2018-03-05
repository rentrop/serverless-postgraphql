import React from 'react';
import { ContainerQuery } from 'react-container-query';
import classnames from 'classnames';
import moment from 'moment';
import Location from 'components/Shared/CrossingListItem/Location';
import * as statusConstants from 'constants/StatusConstants';
import { LARGE_ITEM_MIN_WIDTH } from 'constants/containerQueryConstants';
import 'components/Public/CrossingListItem/PublicCrossingListItem.css';
import DetailsItem from 'components/Public/CrossingListItem/DetailsItem';

const containerQuery = {
  'CrossingListItem--lg': {
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

    console.log(show);

    const CrossingListItemJSX = (
      <div className="CrossingListItem PublicCrossingListItem">
        <div className="PublicCrossingListItem__Overview">
          <div>
            <a href={`/map`} className="CrossingName">
              {crossing.name}
            </a>
          </div>
          <div>
            <Location crossing={crossing} />
          </div>
          <div>
            {moment(createdAt).format('MM/DD/YY')}
            {moment(createdAt).format('h:mm a')}
          </div>
        </div>
        <div className="PublicCrossingListItem__Details">
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
