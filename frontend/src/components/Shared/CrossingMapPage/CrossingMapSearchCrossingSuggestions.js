import { Component } from 'react';
import suggestCrossings from 'components/Shared/CrossingMapPage/queries/suggestCrossingsQuery';
import { graphql } from 'react-apollo';

class CrossingMapSearchCrossingSuggestions extends Component {
  componentDidUpdate() {
    const { updateSuggestions, suggestCrossings } = this.props;

    if (
      suggestCrossings &&
      !suggestCrossings.loading &&
      suggestCrossings.searchCrossings
    ) {
      updateSuggestions(suggestCrossings.searchCrossings.nodes);
    }
  }

  render() {
    return null;
  }
}

export default graphql(suggestCrossings, {
  name: 'suggestCrossings',
  options: ownProps => ({
    variables: {
      search: ownProps.searchQuery,
      communityId: ownProps.communityId,
    },
  }),
})(CrossingMapSearchCrossingSuggestions);
