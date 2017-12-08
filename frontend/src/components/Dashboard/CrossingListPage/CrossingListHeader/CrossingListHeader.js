import React, { Component } from 'react';
import 'components/Dashboard/CrossingListPage/CrossingListHeader/CrossingListHeader.css';
import {ContainerQuery} from 'react-container-query';
import classnames from 'classnames';
import FontAwesome from 'react-fontawesome';
import { graphql } from 'react-apollo';
import statusCountsQuery from 'components/Dashboard/CrossingListPage/queries/statusCountsQuery';

const containerQuery = {
  'fullsize': { minWidth: 768 },
  'smallsize': { maxWidth: 767 }
};

class CrossingListHeader extends Component {
  constructor(props) {
    super(props);
    this.state = {
      showFilterDrawer: false,
    };
  }

  toggleFilterDropdown = () => { this.setState({ showFilterDrawer: !this.state.showFilterDrawer }) };

  render() {
    const isLoading = (
      !this.props.data ||
       this.props.data.loading
    );

    if ( isLoading ) { return '' };

    const { toggleShowOpen,
            toggleShowClosed,
            toggleShowCaution, 
            toggleShowLongterm, 
            toggleSortByUpdated, 
            showOpen, 
            showClosed, 
            showCaution, 
            showLongterm, 
            sortByUpdatedAsc,
            searchQuery,
            searchQueryUpdated } = this.props;
    const { openCrossings, closedCrossings, cautionCrossings, longtermCrossings } = this.props.data;

    return (
      <ContainerQuery query={containerQuery}>
        {(params) => (
          <div className={classnames(params, 'CrossingListHeader')}>
            <div className={classnames(params, 'CrossingListSearch')}>
              <input type="text"
                     className={classnames(params, 'CrossingListSearchInput')}
                     placeholder="Search your crossings"
                     value={searchQuery} 
                     onChange={searchQueryUpdated} />
              <div className={classnames(params, 'CrossingListSearchButton')}>
                <FontAwesome name="search" ariaLabel="Search"/>
              </div>
            </div>

            {params.smallsize ? (
              <div className='smallflex'>
                <div className={classnames(params, 'CrossingListSortToggle')} onClick={toggleSortByUpdated}>
                  <div className={classnames(params, 'CrossingListSortToggleText')}>
                    LAST UPDATED {sortByUpdatedAsc ? <FontAwesome name="caret-up" ariaLabel="Ascending"/> : <FontAwesome name="caret-down" ariaLabel="Descending"/>}
                  </div>
                </div>
                <div className={classnames(params, 'CrossingListFilterToggle', {'selected': this.state.showFilterDrawer})} onClick={this.toggleFilterDropdown}>
                  <div className={classnames(params, 'CrossingListFilterToggleText')}>
                    FILTER {this.state.showFilterDrawer ? <FontAwesome name="minus" ariaLabel="Hide"/> : <FontAwesome name="plus" ariaLabel="Show"/>}
                  </div>
                </div>
              </div>
            ) : (
              <div className={classnames(params, 'CrossingListSortToggle')} onClick={toggleSortByUpdated}>
                <div className={classnames(params, 'CrossingListSortToggleText')}>
                  LAST UPDATED {sortByUpdatedAsc ? <FontAwesome name="caret-up" ariaLabel="Ascending"/> : <FontAwesome name="caret-down" ariaLabel="Descending"/>}
                </div>
              </div>
            )}

            {params.smallsize && !this.state.showFilterDrawer ? "" : (
              <div className={classnames(params, 'CrossingListFilter')}>
                <label className={classnames(params, 'CrossingListFilterItem')}>
                  <input className={classnames(params, 'CrossingListFilterCheckbox')} type='checkbox' defaultChecked={showOpen} onClick={toggleShowOpen}/>
                  Open ({openCrossings.totalCount})
                </label>
                <label className={classnames(params, 'CrossingListFilterItem')}>
                  <input className={classnames(params, 'CrossingListFilterCheckbox')} type='checkbox' defaultChecked={showCaution} onClick={toggleShowCaution}/>
                  Caution ({cautionCrossings.totalCount})
                </label>
                <label className={classnames(params, 'CrossingListFilterItem')}>
                  <input className={classnames(params, 'CrossingListFilterCheckbox')} type='checkbox' defaultChecked={showClosed} onClick={toggleShowClosed}/>
                  Closed ({closedCrossings.totalCount})
                </label>
                <label className={classnames(params, 'CrossingListFilterItem')}>
                  <input className={classnames(params, 'CrossingListFilterCheckbox')} type='checkbox' defaultChecked={showLongterm} onClick={toggleShowLongterm}/>
                  Long Term Closure ({longtermCrossings.totalCount})
                </label>
              </div>
            )}
          </div>
        )}
      </ContainerQuery>
    );
  }
}

export default graphql(statusCountsQuery)(CrossingListHeader);
