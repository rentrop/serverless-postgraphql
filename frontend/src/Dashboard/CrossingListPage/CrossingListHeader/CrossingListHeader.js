import React, { Component } from 'react';
import './CrossingListHeader.css';
import {ContainerQuery} from 'react-container-query';
import classnames from 'classnames';
import FontAwesome from 'react-fontawesome';

const query = {
  'fullsize': { minWidth: 768 },
  'smallsize': { maxWidth: 767 }
};

class CrossingListHeader extends Component {
  constructor(props) {
    super(props);
    this.state = {
      showFilterDrawer: false,
      invertSort: false
    };
  }

  toggleFilterDropdown = () => { this.setState({ showFilterDrawer: !this.state.showFilterDrawer }) };
  toggleSortDirection = () => { this.setState({ invertSort: !this.state.invertSort }) };

  render() {
    return (
      <ContainerQuery query={query}>
        {(params) => (
          <div className={classnames(params, 'CrossingListHeader')}>
            <div className={classnames(params, 'CrossingListSearch')}>
              <input type="text" className={classnames(params, 'CrossingListSearchInput')} placeholder="Search your crossings"/>
              <div className={classnames(params, 'CrossingListSearchButton')}>
                <FontAwesome name="search" ariaLabel="Search"/>
              </div>
            </div>

            {params.smallsize ? (
              <div className='smallflex'>
                <div className={classnames(params, 'CrossingListSortToggle')} onClick={this.toggleSortDirection}>
                  <div className={classnames(params, 'CrossingListSortToggleText')}>
                    LAST UPDATED {this.state.invertSort ? <FontAwesome name="caret-up" ariaLabel="Ascending"/> : <FontAwesome name="caret-down" ariaLabel="Descending"/>}
                  </div>
                </div>
                <div className={classnames(params, 'CrossingListFilterToggle', {'selected': this.state.showFilterDrawer})} onClick={this.toggleFilterDropdown}>
                  <div className={classnames(params, 'CrossingListFilterToggleText')}>
                    FILTER {this.state.showFilterDrawer ? <FontAwesome name="minus" ariaLabel="Hide"/> : <FontAwesome name="plus" ariaLabel="Show"/>}
                  </div>
                </div>
              </div>
            ) : (
              <div className={classnames(params, 'CrossingListSortToggle')} onClick={this.toggleSortDirection}>
                <div className={classnames(params, 'CrossingListSortToggleText')}>
                  LAST UPDATED {this.state.invertSort ? <FontAwesome name="caret-up" ariaLabel="Ascending"/> : <FontAwesome name="caret-down" ariaLabel="Descending"/>}
                </div>
              </div>
            )}

            {params.smallsize && !this.state.showFilterDrawer ? "" : (
              <div className={classnames(params, 'CrossingListFilter')}>
                <div className={classnames(params, 'CrossingListFilterItem')}>
                  <input className={classnames(params, 'CrossingListFilterCheckbox')} type='checkbox'/>
                  Open
                </div>
                <div className={classnames(params, 'CrossingListFilterItem')}>
                  <input className={classnames(params, 'CrossingListFilterCheckbox')} type='checkbox'/>
                  Caution
                </div>
                <div className={classnames(params, 'CrossingListFilterItem')}>
                  <input className={classnames(params, 'CrossingListFilterCheckbox')} type='checkbox'/>
                  Closed
                </div>
                <div className={classnames(params, 'CrossingListFilterItem')}>
                  <input className={classnames(params, 'CrossingListFilterCheckbox')} type='checkbox'/>
                  Long Term Closure
                </div>
              </div> 
            )}
          </div>
        )}
      </ContainerQuery>
    );
  }
}

export default CrossingListHeader;
