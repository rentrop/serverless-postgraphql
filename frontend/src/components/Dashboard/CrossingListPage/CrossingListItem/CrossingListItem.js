import React from 'react';
import { graphql } from 'react-apollo';
import { ContainerQuery } from 'react-container-query';
import classnames from 'classnames';
import Location from 'components/Dashboard/CrossingListPage/CrossingListItem/Location';
import DateTime from 'components/Dashboard/CrossingListPage/CrossingListItem/DateTime';
import StatusToggle from 'components/Dashboard/CrossingListPage/CrossingListItem/StatusToggle';
import Dropdown from 'components/Dashboard/CrossingListPage/CrossingListItem/Dropdown';
import newStatusUpdateMutation from 'components/Dashboard/CrossingListPage/queries/newStatusUpdateMutation';
import crossingsQuery from 'components/Dashboard/CrossingListPage/queries/crossingsQuery';
import allCrossings from 'components/Map/queries/allCrossingsQuery';
import statusCountsQuery from 'components/Dashboard/CrossingListPage/queries/statusCountsQuery';
import statusUpdateFragment from 'components/Dashboard/CrossingListPage/queries/statusUpdateFragment';
import * as statusConstants from 'constants/StatusConstants';
import { LARGE_ITEM_MIN_WIDTH } from 'constants/containerQueryConstants';
import 'components/Dashboard/CrossingListPage/CrossingListItem/CrossingListItem.css';


const containerQuery = {
  'CrossingListItem--lg': {
    minWidth: LARGE_ITEM_MIN_WIDTH,
  }
};

class CrossingListItem extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      selectedStatus: props.crossing.statusUpdateByLatestStatusUpdateId.statusId,
      selectedReason: props.crossing.statusUpdateByLatestStatusUpdateId.statusReasonId,
      selectedDuration: props.crossing.statusUpdateByLatestStatusUpdateId.statusDurationId,
      notes: props.crossing.statusUpdateByLatestStatusUpdateId.notes
    };
  }

  componentWillMount() {
    const { restoreDirtyState, crossing } = this.props;
    if(restoreDirtyState) {
      const savedState = restoreDirtyState(crossing.id);
      if (savedState) {
        this.setState({ selectedStatus: savedState.selectedStatus });
        this.setState({ selectedReason: savedState.selectedReason });
        this.setState({ selectedDuration: savedState.selectedDuration });
        this.setState({ notes: savedState.notes });
        this.props.clearMeasurerCache();
      }
    }
  }

  componentWillUnmount() {
    const { saveDirtyState } = this.props;

    const stateToSave = {
      crossingId: this.props.crossing.id,
      selectedStatus: this.state.selectedStatus,
      selectedDuration: this.state.selectedDuration,
      selectedReason: this.state.selectedReason,
      notes: this.state.notes
    };

    if (this.isDirty()) {
      saveDirtyState(stateToSave);  
    }
  }

  fixSort(store, updatedCrossing) {
    // Get the edge from the current query
    const { crossingQueryVariables } = this.props;
    const data = store.readQuery({ query: crossingsQuery, variables: crossingQueryVariables });
    const edge = data.searchCrossings.edges.find(edge => edge.node.id == updatedCrossing.id);

    // Get all the query variable combinations we have cached
    const queryVariables = Object.keys(store.data.ROOT_QUERY)
                            .filter(query => query.includes('searchCrossings'))
                            .map(q => JSON.parse(q.replace(/(^\w*\()|(\)$)/g, '')));

    // Update the sorting accordingly
    for(var qv of queryVariables) {
      const qvars = {
        orderAsc: qv.orderAsc,
        pageCursor: null,
        search: qv.search,
        showCaution: qv.showCaution,
        showClosed: qv.showClosed,
        showLongterm: qv.showLongterm,
        showOpen: qv.showOpen
      };
      
      this.doASortFix(store, updatedCrossing, qvars, edge);
    }
  }

  doASortFix(store, updatedCrossing, queryVariables, edge) {
    // Get the index of the updated crossing
    let index = -1;
    let data;
    try {
      data = store.readQuery({ query: crossingsQuery, variables: queryVariables });
      index = data.searchCrossings.edges.findIndex(edge => edge.node.id == updatedCrossing.id);
      
    } catch(err) {
      console.log(err);
    }

    // Remove it if it's on a list already
    if (index != -1) {
      data.searchCrossings.edges.splice(index, 1);
    }

    // Add it to a list if appropriate
    if ((queryVariables.showOpen && updatedCrossing.latestStatusId == statusConstants.OPEN) ||
        (queryVariables.showCaution && updatedCrossing.latestStatusId == statusConstants.CAUTION) ||
        (queryVariables.showClosed && updatedCrossing.latestStatusId == statusConstants.CLOSED) ||
        (queryVariables.showLongterm && updatedCrossing.latestStatusId == statusConstants.LONGTERM)) {
      if (queryVariables.orderAsc) {
        data.searchCrossings.edges.splice(-1, 0, edge);
      } else {
        data.searchCrossings.edges.splice(0, 0, edge);
      }   
    }

    // write it to the apollo cache
    store.writeQuery({
      query: crossingsQuery,
      variables: queryVariables,
      data
    });
  }

  updateMap(store, updatedCrossing) {
    // Update the selected crossing
    this.props.selectCrossing(updatedCrossing.id, updatedCrossing.latestStatusId);

    for (var statusId of [1, 2, 3, 4]) {
      // Get the index of the updated crossing
      let index = -1;
      let data;  
      try {
        data = store.readQuery({ query: allCrossings, variables: {statusId: statusId} });
        index = data.allCrossings.nodes.findIndex(node => node.id == updatedCrossing.id);
      } catch(err) {
        console.log(err);
      }

      // Remove it if it's on a layer already
      if (index != -1) {
        data.allCrossings.nodes.splice(index, 1);
      }

      // Add it to a layer if appropriate
      if(updatedCrossing.latestStatusId == statusId) {
        data.allCrossings.nodes.push({
          id: updatedCrossing.id,
          geojson: updatedCrossing.geojson,
          latestStatusId: updatedCrossing.latestStatusId,
          __typename: "Crossing"
        })
      }

      // write it to the apollo cache
      store.writeQuery({
        query: allCrossings,
        variables: {statusId: statusId},
        data
      });
    }
  }

  newStatusUpdate = (e) => {
    const updateData = {
      id: Math.round(Math.random() * -1000000),
      crossingId: this.props.crossing.id,
      geojson: this.props.crossing.geojson,
      statusId: this.state.selectedStatus,
      reasonId: this.state.selectedReason,
      durationId: this.state.selectedDuration,
      notes: this.state.notes,
      user: this.props.currentUser
    };
    const { refreshList, clearMeasurerCache } = this.props;
    const queriesToRefetch = 
      (this.props.listOrMap == 'map') ? [
        {query: statusCountsQuery},
        {
          query: crossingsQuery,
          variables: {
            orderAsc: false,
            pageCursor: null,
            search: "%%",
            showCaution: true,
            showClosed: true,
            showLongterm: true,
            showOpen: true
          }
        }
      ] : [
        {query: statusCountsQuery},
        {query: allCrossings, variables: {statusId: 1}},
        {query: allCrossings, variables: {statusId: 2}},
        {query: allCrossings, variables: {statusId: 3}},
        {query: allCrossings, variables: {statusId: 4}}
      ];

    this.props.newStatusUpdateMutation({
      variables: {
        crossingId: updateData.crossingId,
        statusId: updateData.statusId,
        reasonId: updateData.reasonId,
        durationId: updateData.durationId,
        notes: updateData.notes
      },
      optimisticResponse: {
        newStatusUpdate: {
          statusUpdate: {
            crossingId: updateData.crossingId,
            crossingByCrossingId: {
              id: updateData.crossingId,
              geojson: updateData.geojson,
              latestStatusId: updateData.statusId,
              latestStatusUpdateId: updateData.id,
              latestStatusCreatedAt: Date.now(),
              statusUpdateByLatestStatusUpdateId: {
                id: updateData.id,
                crossingId: updateData.crossingId,
                statusId: updateData.statusId,
                statusReasonId: updateData.reasonId,
                statusDurationId: updateData.durationId,
                createdAt: Date.now(),
                notes: updateData.notes,
                userByCreatorId: {
                  firstName: updateData.user.firstName,
                  lastName: updateData.user.lastName,
                  __typename: "User"
                },
                __typename: "StatusUpdate"
              },
              __typename: "Crossing"
            },
            __typename: "StatusUpdate"
          },
          __typename: "NewStatusUpdatePayload"
        },
      },
      update: (store, {data: {newStatusUpdate}}) => {
        // Get the updated crossing from the status update mutation
        const updatedCrossing = newStatusUpdate.statusUpdate.crossingByCrossingId;

        // Write the updated crossing to the cache
        store.writeFragment({
          id: `Crossing:${updatedCrossing.id}`,
          fragment: statusUpdateFragment,
          data: updatedCrossing
        });

        // If we're in a list view, fix the sort order
        if(this.props.listOrMap == "list") {
          this.fixSort(store, updatedCrossing);  
        }

        // If we're on the map, update the map queries
        if(this.props.listOrMap == "map") {
          this.updateMap(store, updatedCrossing);  
        }

        
      },
      refetchQueries: queriesToRefetch
    })
    .then(({ data }) => {
      const update = data.newStatusUpdate.statusUpdate.crossingByCrossingId.statusUpdateByLatestStatusUpdateId;

      this.setState({ 
        selectedStatus: update.statusId,
        selectedReason: update.statusReasonId,
        selectedDuration: update.statusDurationId,
        notes: update.notes 
      });
      if(clearMeasurerCache) {
        clearMeasurerCache(true);
        refreshList();
      }
    }).catch((error) => {
      console.log('there was an error sending the query', error);
    });
  }

  openClicked = () => {
    this.setState({ 
      selectedStatus: statusConstants.OPEN,
      notes: '',
      selectedReason: null,
      selectedDuration: null 
    });
    if(this.props.clearMeasurerCache) {
      this.props.clearMeasurerCache();  
    }
  }
  
  cautionClicked = () => {
    this.setState({ 
      selectedStatus: statusConstants.CAUTION,
      notes: '',
      selectedReason: this.props.reasons.find(reason => reason.statusId === statusConstants.CAUTION).id,
      selectedDuration: null
    });

    if(this.props.clearMeasurerCache) {
      this.props.clearMeasurerCache();  
    }
  }
  
  closedClicked = () => {
    this.setState({ 
      selectedStatus: statusConstants.CLOSED,
      notes: '',
      selectedReason: this.props.reasons.find(reason => reason.statusId === statusConstants.CLOSED).id,
      selectedDuration: null
    });
    
    if(this.props.clearMeasurerCache) {
      this.props.clearMeasurerCache();  
    }
  }
  
  longtermClicked = () => {
    this.setState({ 
      selectedStatus: statusConstants.LONGTERM,
      notes: '',
      selectedReason: this.props.reasons.find(reason => reason.statusId === statusConstants.LONGTERM).id,
      selectedDuration: this.props.durations[0].id
    });
    
    if(this.props.clearMeasurerCache) {
      this.props.clearMeasurerCache();  
    }
  }

  reasonChanged = (e) => {
    this.setState({ selectedReason: e.target.value });
    
    if(this.props.clearMeasurerCache) {
      this.props.clearMeasurerCache();  
    }
  }
  
  durationChanged = (e) => {
    this.setState({ selectedDuration: e.target.value });
    
    if(this.props.clearMeasurerCache) {
      this.props.clearMeasurerCache();  
    }
  }
  
  notesChanged = (e) => {
    this.setState({ notes: e.target.value });
    
    if(this.props.clearMeasurerCache) {
      this.props.clearMeasurerCache();  
    }
  }

  cancelClicked = () => {
    this.setState({ 
      selectedStatus: this.props.crossing.statusUpdateByLatestStatusUpdateId.statusId,
      selectedReason: this.props.crossing.statusUpdateByLatestStatusUpdateId.statusReasonId,
      selectedDuration: this.props.crossing.statusUpdateByLatestStatusUpdateId.statusDurationId,
      notes: this.props.crossing.statusUpdateByLatestStatusUpdateId.notes 
    });
    
    if(this.props.clearMeasurerCache) {
      this.props.clearMeasurerCache();  
    }
  }

  isDirty() {
    // Temporary fix for storybook
    if(this.props.dirty) return true;

    const savedStatus = this.props.crossing.statusUpdateByLatestStatusUpdateId.statusId;
    const savedReason = this.props.crossing.statusUpdateByLatestStatusUpdateId.statusReasonId;
    const savedDuration = this.props.crossing.statusUpdateByLatestStatusUpdateId.statusDurationId;
    const savedNotes = this.props.crossing.statusUpdateByLatestStatusUpdateId.notes;

    return (savedStatus !== this.state.selectedStatus ||
            savedReason !== this.state.selectedReason ||
            savedDuration !== this.state.selectedDuration ||
            savedNotes !== this.state.notes);
  }

  render () {
    const { crossing, reasons, durations } = this.props;
    const { createdAt, userByCreatorId } = crossing.statusUpdateByLatestStatusUpdateId;

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
      default:
        break;
    }

    const CrossingListItemJSX = (
      <div>
        <div className="CrossingListItemFlexContainer">
          <div className="CrossingListItemFlexItem">
            <a href={`/dashboard/crossing/${crossing.id}`} className="CrossingName">{crossing.name}</a>
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
          <div className="ControlLabel">Status: {statusConstants.strings[this.state.selectedStatus]}</div>
            <StatusToggle
              status={this.state.selectedStatus}
              openClicked={this.openClicked}
              cautionClicked={this.cautionClicked}
              closedClicked={this.closedClicked}
              longtermClicked={this.longtermClicked} />
          </div>

        {show.includes('reason') ? (
          <div className="CrossingListItemFlexItem">
            <div className="ControlLabelContainer">
              <div className="ControlLabel">Reason</div>
              <div className="required">{this.isDirty() ? "Required" : ""}</div>
            </div>
            <Dropdown
              options={reasons.filter(reason => reason.statusId === this.state.selectedStatus)}
              selected={this.state.selectedReason}
              onChange={this.reasonChanged} />
          </div>
        ) : (
          <div className="CrossingListItemFlexItem--spacer" />
        )}
          <div className="CrossingListItemFlexItem">
            <div className="ControlLabel">Notes to the public</div>
            <input className="NotesTextBox" type="text" value={this.state.notes} onChange={this.notesChanged}/>
          </div>
        </div>

        { (show.includes('duration') || show.includes('cancelSave')) && (

        <div className="CrossingListItemFlexContainer">
          <div className="CrossingListItemFlexItem--spacer" />

        {show.includes('duration') ? (
          <div className="CrossingListItemFlexItem">
            <div className="ControlLabelContainer">
              <div className="ControlLabel">Duration</div>
              <div className="required">{this.isDirty() ? "Required" : ""}</div>
            </div>
            <Dropdown
              options={durations}
              selected={this.state.selectedDuration}
              onChange={this.durationChanged} />
          </div>
        ) : (
          <div className="CrossingListItemFlexItem--spacer" />
        )}

        {show.includes('cancelSave') ? (
          <div className="CrossingListItemFlexItem">
            <div className="ButtonContainer">
              <div className="CancelButton" onClick={this.cancelClicked}>Cancel</div>
              <div className="SaveButton" onClick={this.newStatusUpdate}>Save</div>
            </div>
          </div>
        ) : (
          <div className="CrossingListItemFlexItem--spacer" />
        )}

        </div>
        )}

      </div>
    );

    if(!this.props.cqClassName) {
      return (
        <ContainerQuery query={containerQuery}>
        {(params) => (
          <div className={classnames(params, {"CrossingListItem--dirty": this.isDirty()}, "CrossingListItem")}>
            {CrossingListItemJSX}
          </div>
        )}
        </ContainerQuery>
      );
    }

    return (
      <div className={classnames(this.props.cqClassName, {"CrossingListItem--dirty": this.isDirty()}, "CrossingListItem")}>
        {CrossingListItemJSX}
      </div>
    );
  }
}

export default graphql(newStatusUpdateMutation, { name: 'newStatusUpdateMutation' })(CrossingListItem);
