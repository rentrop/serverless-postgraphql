import React from 'react';
import { ContainerQuery } from 'react-container-query';
import classnames from 'classnames';
import Location from 'components/Dashboard/CrossingListPage/CrossingListItem/Location';
import DateTime from 'components/Dashboard/CrossingListPage/CrossingListItem/DateTime';
import * as statusConstants from 'constants/StatusConstants';
import { LARGE_ITEM_MIN_WIDTH } from 'constants/containerQueryConstants';
import 'components/Public/CrossingListItem/PublicCrossingListItem.css';


const containerQuery = {
  'CrossingListItem--lg': {
    minWidth: LARGE_ITEM_MIN_WIDTH,
  }
};

class PublicCrossingListItem extends React.Component {

  render () {
    const { crossing, reasons, durations } = this.props;
    const { createdAt, userByCreatorId } = crossing.statusUpdateByLatestStatusUpdateId;

    var show = [];
    switch(crossing.latestStatusId) {
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
        <div className="CrossingListItemFlexContainer">
          <div className="CrossingListItemFlexItem">
            <a href={`/map`} className="CrossingName">{crossing.name}</a>
          </div>
          <div className="CrossingListItemFlexItem">
            <Location crossing={ crossing } />
          </div>
          <div className="CrossingListItemFlexItem">
            <DateTime datetime={ createdAt } user={ userByCreatorId } />
          </div>
        </div>
        <div className="CrossingListItemFlexContainer">
          <div className="CrossingListItemFlexItem">
          <div className="ControlLabel">Status: {statusConstants.strings[crossing.latestStatusId]}</div>
        </div>

        {show.includes('reason') ? (
          <div className="CrossingListItemFlexItem">
            <div className="ControlLabelContainer">
              <div className="ControlLabel">Reason</div>
            </div>
          </div>
        ) : (
          <div className="CrossingListItemFlexItem--spacer" />
        )}
          <div className="CrossingListItemFlexItem">
            <div className="ControlLabel">Notes to the public</div>
          </div>
        </div>

          {show.includes('duration') ? (
            <div className="CrossingListItemFlexContainer">
            <div className="CrossingListItemFlexItem--spacer" />
            <div className="CrossingListItemFlexItem">
              <div className="ControlLabelContainer">
                <div className="ControlLabel">Duration</div>
              </div>
            </div>
            </div>
          ) : (
            <div className="CrossingListItemFlexItem--spacer" />
          )}
      </div>
    );

    if(!this.props.cqClassName) {
      return (
        <ContainerQuery query={containerQuery}>
        {(params) => (
          <div className={classnames(params, "CrossingListItem")}>
            {CrossingListItemJSX}
          </div>
        )}
        </ContainerQuery>
      );
    }

    return (
      <div className={classnames(this.props.cqClassName, "CrossingListItem")}>
        {CrossingListItemJSX}
      </div>
    );
  }
}

export default PublicCrossingListItem;
