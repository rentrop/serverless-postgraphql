import React from 'react';
import FontAwesome from 'react-fontawesome';
import * as statusConstants from 'constants/StatusConstants';
import 'components/Dashboard/CrossingListPage/CrossingListItem/StatusToggle.css';

class StatusToggle extends React.Component {
  constructor(props) {
    super(props);
    this.state = {};
  }

  openHovered = () => {
    this.setState({ hoveredStatus: statusConstants.OPEN });
  };
  cautionHovered = () => {
    this.setState({ hoveredStatus: statusConstants.CAUTION });
  };
  closedHovered = () => {
    this.setState({ hoveredStatus: statusConstants.CLOSED });
  };
  longtermHovered = () => {
    this.setState({ hoveredStatus: statusConstants.LONGTERM });
  };

  clearHover = () => {
    this.setState({ hoveredStatus: null });
  };

  render() {
    return (
      <div className="StatusToggleContainer">
        <div
          className={
            'StatusToggle__open' +
            (this.props.status === statusConstants.OPEN ? '--selected' : '') +
            (this.state.hoveredStatus === statusConstants.OPEN ? ' hover' : '')
          }
          onClick={this.props.openClicked}
          onMouseOver={this.openHovered}
          onMouseLeave={this.clearHover}
        >
          <FontAwesome name="circle-o" />
        </div>
        <div
          className={
            'StatusToggle__caution' +
            (this.props.status === statusConstants.CAUTION
              ? '--selected'
              : '') +
            (this.state.hoveredStatus === statusConstants.CAUTION
              ? ' hover'
              : '')
          }
          onClick={this.props.cautionClicked}
          onMouseOver={this.cautionHovered}
          onMouseLeave={this.clearHover}
        >
          <FontAwesome name="exclamation-triangle" />
        </div>
        <div
          className={
            'StatusToggle__closed' +
            (this.props.status === statusConstants.CLOSED ? '--selected' : '') +
            (this.state.hoveredStatus === statusConstants.CLOSED
              ? ' hover'
              : '')
          }
          onClick={this.props.closedClicked}
          onMouseOver={this.closedHovered}
          onMouseLeave={this.clearHover}
        >
          <FontAwesome name="times" />
        </div>
        <div
          className={
            'StatusToggle__longterm' +
            (this.props.status === statusConstants.LONGTERM
              ? '--selected'
              : '') +
            (this.state.hoveredStatus === statusConstants.LONGTERM
              ? ' hover'
              : '')
          }
          onClick={this.props.longtermClicked}
          onMouseOver={this.longtermHovered}
          onMouseLeave={this.clearHover}
        >
          <FontAwesome name="times" style={{ textDecoration: 'underline' }} />
        </div>
      </div>
    );
  }
}

export default StatusToggle;
