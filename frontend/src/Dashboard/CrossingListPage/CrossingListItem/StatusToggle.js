import React from 'react';
import FontAwesome from 'react-fontawesome';
import './StatusToggle.css';

const STATUS_OPEN = Symbol('open');
const STATUS_CAUTION = Symbol("caution");
const STATUS_CLOSED = Symbol("closed");
const STATUS_LONGTERM = Symbol("longterm");

class StatusToggle extends React.Component {
  constructor(props) {
    super(props);

    switch (props.status) {
      case 'Open':
        this.state = { selectedStatus: STATUS_OPEN }
        break;
      case 'Caution':
        this.state = { selectedStatus: STATUS_CAUTION }
        break;
      case 'Closed':
        this.state = { selectedStatus: STATUS_CLOSED }
        break;
      case 'Long Term Closure':
        this.state = { selectedStatus: STATUS_LONGTERM }
        break;
    }
  }

  openClicked = () => { this.setState({ selectedStatus: STATUS_OPEN }) };
  cautionClicked = () => { this.setState({ selectedStatus: STATUS_CAUTION }) };
  closedClicked = () => { this.setState({ selectedStatus: STATUS_CLOSED }) };
  longtermClicked = () => { this.setState({ selectedStatus: STATUS_LONGTERM }) };

  openHovered = () => { this.setState({ hoveredStatus: STATUS_OPEN }) };
  cautionHovered = () => { this.setState({ hoveredStatus: STATUS_CAUTION }) };
  closedHovered = () => { this.setState({ hoveredStatus: STATUS_CLOSED }) };
  longtermHovered = () => { this.setState({ hoveredStatus: STATUS_LONGTERM }) };

  clearHover = () => { this.setState({ hoveredStatus: null }) };

  render () {
    return (
      <div className="StatusToggleContainer">
        <div 
          className={"StatusToggle__open" + 
                    (this.state.selectedStatus === STATUS_OPEN ? "--selected" : "") +
                    (this.state.hoveredStatus === STATUS_OPEN ? " hover" : "")}
          onClick={this.openClicked}
          onMouseOver={this.openHovered}
          onMouseLeave={this.clearHover} >
          <FontAwesome name='circle-o' />
        </div>
        <div className={"StatusToggle__caution" + 
                       (this.state.selectedStatus === STATUS_CAUTION ? "--selected" : "") + 
                       (this.state.hoveredStatus === STATUS_CAUTION ? " hover" : "")}
          onClick={this.cautionClicked}
          onMouseOver={this.cautionHovered}
          onMouseLeave={this.clearHover} >
          <FontAwesome name='exclamation-triangle' />
        </div>
        <div className={"StatusToggle__closed" + 
                       (this.state.selectedStatus === STATUS_CLOSED ? "--selected" : "") +
                       (this.state.hoveredStatus === STATUS_CLOSED ? " hover" : "")}
          onClick={this.closedClicked}
          onMouseOver={this.closedHovered}
          onMouseLeave={this.clearHover} >
          <FontAwesome name='times' />
        </div>
        <div className={"StatusToggle__longterm" + 
                       (this.state.selectedStatus === STATUS_LONGTERM ? "--selected" : "") +
                       (this.state.hoveredStatus === STATUS_LONGTERM ? " hover" : "")}
          onClick={this.longtermClicked}
          onMouseOver={this.longtermHovered}
          onMouseLeave={this.clearHover} >
          <FontAwesome name='times' style={{ textDecoration: 'underline' }} />
        </div>
      </div>
    );
  }
}

export default StatusToggle;
