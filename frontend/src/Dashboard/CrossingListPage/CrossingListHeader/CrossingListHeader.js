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
                <div className={classnames(params, 'CrossingListSortToggle')}>
                  <div className={classnames(params, 'CrossingListSortToggleText')}>
                    LAST UPDATED <FontAwesome name="caret-up" ariaLabel="Ascending"/>
                  </div>
                </div>
                <div className={classnames(params, 'CrossingListFilterToggle')}>
                  <div className={classnames(params, 'CrossingListFilterToggleText')}>
                    FILTER <FontAwesome name="plus" ariaLabel="Expand"/>
                  </div>
                </div>
              </div>
            ) : (
              <div className={classnames(params, 'CrossingListSortToggle')}>
                <div className={classnames(params, 'CrossingListSortToggleText')}>
                  LAST UPDATED <FontAwesome name="caret-up" ariaLabel="Ascending"/>
                </div>
              </div>
            )}

            {params.fullsize ? (
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
            ) : ''}

          </div>
        )}
      </ContainerQuery>
    );
  }
}

export default CrossingListHeader;
