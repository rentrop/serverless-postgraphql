import React from 'react';
import FontAwesome from 'react-fontawesome';
import Location from './Location';
import DateTime from './DateTime';
import StatusToggle from './StatusToggle';
import Dropdown from './Dropdown';
import './CrossingListItem.css';
import * as statusConstants from './StatusConstants';

const statusStrings = new Map();
statusStrings.set(statusConstants.OPEN, 'Open');
statusStrings.set(statusConstants.CAUTION, 'Caution');
statusStrings.set(statusConstants.CLOSED, 'Closed');
statusStrings.set(statusConstants.LONGTERM, 'Long Term Closure');

class CrossingListItem extends React.Component {
  constructor(props) {
    super(props);
    this.state = { selectedStatus: props.savedStatus };
  }

  isDirty() {
    // Temporary fix for storybook
    if(this.props.dirty) return true;

    return (this.props.savedStatus !== this.state.selectedStatus);
  }

  openClicked = () => { this.setState({ selectedStatus: statusConstants.OPEN }) };
  cautionClicked = () => { this.setState({ selectedStatus: statusConstants.CAUTION }) };
  closedClicked = () => { this.setState({ selectedStatus: statusConstants.CLOSED }) };
  longtermClicked = () => { this.setState({ selectedStatus: statusConstants.LONGTERM }) };

  render () {
    var show = [];
    switch(this.state.selectedStatus) {
      case statusConstants.OPEN:
        show = this.isDirty() ? ['cancelSave'] : [];
        break;
      case statusConstants.CAUTION:
      case statusConstants.CLOSED:
        show = this.isDirty() ? ['reason', 'cancelSave'] : ['reason'];
        break;
      case statusConstants.LONGTERM:
        show = this.isDirty() ? ['reason', 'duration', 'cancelSave'] : ['reason', 'duration'];
        break;  
    }

    return (
      <div>
      <div style={{height: '12px', backgroundColor: '#f5f3f7'}}></div>
      <div className={this.isDirty() ? "DirtyBorder" : ""}>
        <div className="CrossingListItemContainer">
          <div className="CrossingListItemFlexContainer">
            <div className="CrossingName">Spurlock Valley</div>
            <Location />
            <DateTime />
          </div>
          <div className="CrossingListItemFlexContainer">
            <div className="flexitem">
              <div className="ControlLabel">Status: {statusStrings.get(this.state.selectedStatus)}</div>
              <StatusToggle 
                status={this.state.selectedStatus}
                openClicked={this.openClicked}
                cautionClicked={this.cautionClicked}
                closedClicked={this.closedClicked}
                longtermClicked={this.longtermClicked} />
            </div>
            <div className="flexitem">
              <div className={show.includes('reason') ? "" : "hidden"}>
                <div className="ControlLabelContainer">
                  <div className="ControlLabel">Reason</div>
                  <div className="required">{this.isDirty() ? "Required" : ""}</div>
                </div>
                <Dropdown />
              </div>
            </div>
            <div className="flexitem">
              <div className="ControlLabel">Notes to the public</div>
              <input className="NotesTextBox" type="text" />
            </div>
          </div>
          <div className={show.includes('duration') || show.includes('cancelSave') ? "CrossingListItemFlexContainer" : ""}>
            <div className="flexitem" />
            <div className="flexitem">
              <div className={show.includes('duration') ? "" : "hidden"}>
                <div className="ControlLabelContainer">
                  <div className="ControlLabel">Duration</div>
                  <div className="required">{this.isDirty() ? "Required" : ""}</div>
                </div>
                <Dropdown />
              </div>
            </div>
            <div className="flexitem">
              <div className={show.includes('cancelSave') ? "" : "hidden"}>
                <div className="flexcontainer">              
                  <div className="CancelButton">Cancel</div>
                  <div className="SaveButton">Save</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div style={{height: '12px', backgroundColor: '#f5f3f7'}}></div>
      </div>
    );
  }
}

export default CrossingListItem;
