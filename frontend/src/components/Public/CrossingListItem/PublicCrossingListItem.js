import React from 'react';
import { ContainerQuery } from 'react-container-query';
import classnames from 'classnames';
import moment from 'moment';
import Location from 'components/Dashboard/CrossingListPage/CrossingListItem/Location';
import * as statusConstants from 'constants/StatusConstants';
import { LARGE_ITEM_MIN_WIDTH } from 'constants/containerQueryConstants';
import 'components/Public/CrossingListItem/PublicCrossingListItem.css';

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
        show = ['reason'];
        break;
      case statusConstants.LONGTERM:
        show = ['reason', 'duration'];
        break;
      default:
        break;
    }

    const CrossingListItemJSX = (
      <div>
        <div>
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
        <div>
          <div>
            <div className="ControlLabel">
              Status: {statusConstants.statusNames[crossing.latestStatusId]}
            </div>
          </div>

          {show.includes('reason') && (
            <div>
              <div className="ControlLabelContainer">
                <div className="ControlLabel">Reason</div>
              </div>
            </div>
          )}
          <div>
            <div className="ControlLabel">Notes to the public</div>
          </div>
        </div>

        {show.includes('duration') && (
          <div>
            <div>
              <div className="ControlLabelContainer">
                <div className="ControlLabel">Duration</div>
              </div>
            </div>
          </div>
        )}
      </div>
    );

    if (!this.props.cqClassName) {
      return (
        <ContainerQuery query={containerQuery}>
          {params => (
            <div className={classnames(params)}>
              {CrossingListItemJSX}
            </div>
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
