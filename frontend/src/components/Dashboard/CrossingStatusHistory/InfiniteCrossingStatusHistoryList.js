import React from 'react';
import CrossingStatusHistoryItem from 'components/Dashboard/CrossingStatusHistory/CrossingStatusHistoryItem';
import {InfiniteLoader, AutoSizer, List, WindowScroller, CellMeasurer, CellMeasurerCache} from 'react-virtualized';
import 'components/Dashboard/CrossingListPage/CrossingList.css';

let virtualizingList = [];
let listRef;

const cache = new CellMeasurerCache({
  defaultHeight: 400,
  fixedWidth: true
});

export default class InfiniteCrossingStatusHistoryList extends React.Component{

  constructor(props) {
    super(props);

    this._isRowLoaded = this._isRowLoaded.bind(this);
    this._rowRenderer = this._rowRenderer.bind(this);
    this._noRowsRenderer = this._noRowsRenderer.bind(this);
  }

  componentWillReceiveProps(nextProps) {
    if(listRef) {
      this.refreshList();
      this.clearMeasurerCache();
    };
  }

  componentDidMount() {
    if (listRef) {
      this.refreshList();
      this.clearMeasurerCache();
    }
  }

  clearMeasurerCache() {
    cache.clearAll();
    listRef.recomputeRowHeights();
  }

  refreshList() {
    listRef.forceUpdateGrid();
  }

  _isRowLoaded ({ index }) {
    return !!virtualizingList[index];
  }

  _rowRenderer({ key, index, style, parent}) {
    const { showNames } = this.props;
    let statusUpdate;

    if (index<virtualizingList.length) {
      statusUpdate = virtualizingList[index].node
    } else {
      return (
        <div key={key}>Loading.....</div>       
      )
    }

    return (
      <CellMeasurer
        cache={cache}
        columnIndex={0}
        key={key}
        parent={parent}
        rowIndex={index} >
        {({ measure }) => (
          <div className='CrossingStatusHistoryItemMeasureContainer' style={style}>
            <CrossingStatusHistoryItem measure={measure} key={key} update={statusUpdate} showNames={showNames}/>
          </div>
        )}
      </CellMeasurer>
    )
  }

  _noRowsRenderer(){
      return <h1>No Rows returned from GraphQL fetch....</h1>
  }

  render() {

    const {loadMoreRows,allStatusUpdates} = this.props;

    if(!allStatusUpdates) {
      return (<div>Loading</div>);
    }

    virtualizingList = allStatusUpdates.edges;

    return (
      <div>
        <InfiniteLoader
          isRowLoaded={this._isRowLoaded}
          loadMoreRows={loadMoreRows}
          rowCount={allStatusUpdates.totalCount}
          threshold={10}>
          {({ onRowsRendered, registerChild }) => (
            <WindowScroller>
              {({ height, isScrolling, scrollTop }) => (
                <AutoSizer disableHeight>
                  {({ width }) => (
                    <List
                      ref={ref => registerChild = listRef = ref}
                      className="List"
                      autoHeight
                      deferredMeasurementCache={cache}
                      height={height}
                      rowHeight={cache.rowHeight}
                      width={width}
                      onRowsRendered={onRowsRendered}
                      rowCount={allStatusUpdates.totalCount}
                      rowRenderer={this._rowRenderer}
                      scrollTop={scrollTop} />
                  )}
                </AutoSizer>
              )}
            </WindowScroller>
          )}
        </InfiniteLoader>
      </div>
    );
  }
}
