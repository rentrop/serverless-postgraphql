import React, { Component } from 'react';
import InfiniteCrossingPaginationContainer from 'components/Dashboard/CrossingListPage/InfiniteCrossingPaginationContainer';
import CrossingListHeader from 'components/Dashboard/CrossingListPage/CrossingListHeader/CrossingListHeader';
import 'components/Dashboard/CrossingListPage/CrossingListPage.css';

class CrossingListPage extends Component {
  constructor(props) {
    super(props);
    this.state = {
      sortByUpdatedAsc: false,
      showOpen: true,
      showClosed: true,
      showCaution: true,
      showLongterm: true,
      searchQuery: '',
      formattedSearchQuery: '%%',
    };
  }

  formatSearchQuery(query) {
    return `%${query.replace(/ /g, '%')}%`;
  }

  toggleShowOpen = () => {
    this.setState({ showOpen: !this.state.showOpen });
  };
  toggleShowClosed = () => {
    this.setState({ showClosed: !this.state.showClosed });
  };
  toggleShowCaution = () => {
    this.setState({ showCaution: !this.state.showCaution });
  };
  toggleShowLongterm = () => {
    this.setState({ showLongterm: !this.state.showLongterm });
  };
  toggleSortByUpdated = () => {
    this.setState({ sortByUpdatedAsc: !this.state.sortByUpdatedAsc });
  };
  searchQueryUpdated = e => {
    this.setState({ searchQuery: e.target.value });
    this.setState({
      formattedSearchQuery: this.formatSearchQuery(e.target.value),
    });
  };

  render() {
    const { currentUser } = this.props;

    return (
      <div className="CrossingListPage">
        <CrossingListHeader
          showOpen={this.state.showOpen}
          toggleShowOpen={this.toggleShowOpen}
          showClosed={this.state.showClosed}
          toggleShowClosed={this.toggleShowClosed}
          showCaution={this.state.showCaution}
          toggleShowCaution={this.toggleShowCaution}
          showLongterm={this.state.showLongterm}
          toggleShowLongterm={this.toggleShowLongterm}
          toggleSortByUpdated={this.toggleSortByUpdated}
          sortByUpdatedAsc={this.state.sortByUpdatedAsc}
          searchQuery={this.state.searchQuery}
          formattedSearchQuery={this.state.formattedSearchQuery}
          searchQueryUpdated={this.searchQueryUpdated}
          currentUser={currentUser}
        />
        <InfiniteCrossingPaginationContainer
          {...this.props}
          showOpen={this.state.showOpen}
          showClosed={this.state.showClosed}
          showCaution={this.state.showCaution}
          showLongterm={this.state.showLongterm}
          sortByUpdatedAsc={this.state.sortByUpdatedAsc}
          searchQuery={this.state.formattedSearchQuery}
          currentUser={currentUser}
        />
      </div>
    );
  }
}

export default CrossingListPage;
