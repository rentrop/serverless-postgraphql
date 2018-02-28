import React, { Component } from 'react';
import 'components/Shared/CrossingMapPage/CrossingMapSearchBar.css';
import FontAwesome from 'react-fontawesome';
import Autosuggest from 'react-autosuggest';
import MapboxClient from 'mapbox';
import CrossingMapSearchCrossingSuggestions from 'components/Shared/CrossingMapPage/CrossingMapSearchCrossingSuggestions';

const mapboxClient = new MapboxClient(
  'pk.eyJ1IjoiY3Jvd2VhdHgiLCJhIjoiY2o1NDFvYmxkMHhkcDMycDF2a3pseDFpZiJ9.UcnizcFDleMpv5Vbv8Rngw',
);

let autosuggestInput;

// When suggestion is clicked, Autosuggest needs to populate the input
// based on the clicked suggestion. Teach Autosuggest how to calculate the
// input value for every given suggestion.
const getSuggestionValue = suggestion => {
  return suggestion.place_name || suggestion.name;
};

// Use your imagination to render suggestions.
const renderSuggestion = suggestion => (
  <div className='CrossingMapSearchBar__suggestion-container'>
    <div className="CrossingMapSearchBar__suggestion-icon">
      <FontAwesome name="map-marker" size="2x" />
    </div>
    <div className="CrossingMapSearchBar__suggestion-text">
      {suggestion.place_name || suggestion.name}
    </div>
  </div>
);

const renderSectionTitle = section => {
  return null;
};

const getSectionSuggestions = section => {
  return section.suggestions;
};

const formatSearchQuery = query => {
  // debugger;
  // if (!query) return '';
  return `%${query.replace(/ /g, '%')}%`;
};

class CrossingMapSearchBar extends Component {
  constructor() {
    super();

    // Autosuggest is a controlled component.
    // This means that you need to provide an input value
    // and an onChange handler that updates this value (see below).
    // Suggestions also need to be provided to the Autosuggest,
    // and they are initially empty because the Autosuggest is closed.
    this.state = {
      typedValue: '',
      selectedValue: '',
      mapboxSuggestions: [],
      crossingSuggestions: [],
    };
  }

  onChange = (event, { newValue, method }) => {
    console.log(method);
    console.log(newValue);

    if (method === 'type') {
      this.setState({
        typedValue: newValue,
        selectedValue: null,
      });
    } else if (method === 'escape') {
      this.setState({
        selectedValue: null,
      });
    } else if (method === 'enter' || method === 'click') {
      this.setState({
        selectedValue: newValue,
        typedValue: newValue,
      });
    } else if (method === 'down' || method === 'up') {
      this.setState({
        selectedValue: newValue,
      });
    }
  };

  onSuggestionSelected = (
    event,
    { suggestion, suggestionValue, suggestionIndex, sectionIndex, method },
  ) => {
    // If we've selected a crossing, center in on it
    if (suggestion.__typename === 'Crossing') {
      this.props.selectCrossing(suggestion.id);
    }

    // If we've selected a mapbox location
    if (suggestion.type === 'Feature') {
      this.props.setSelectedLocationCoordinates(suggestion.center);
    }

    autosuggestInput.blur();
  };

  // Autosuggest will call this function every time you need to update suggestions.
  onSuggestionsFetchRequested = ({ value }) => {
    console.log(value);
    const { center } = this.props;

    const inputValue = value.trim().toLowerCase();
    const inputLength = inputValue.length;

    // Get the suggestions from the mapbox geocoder
    if (inputLength > 2) {
      mapboxClient.geocodeForward(
        inputValue,
        {
          proximity: { latitude: center.lat, longitude: center.lng },
        },
        (err, res) => {
          this.setState({ mapboxSuggestions: res.features });
        },
      );
    } else {
      this.setState({ mapboxSuggestions: [] });
    }
  };

  // Autosuggest will call this function every time you need to clear suggestions.
  onSuggestionsClearRequested = () => {
    this.setState({
      mapboxSuggestions: [],
    });
  };

  clearSearch = () => {
    this.props.searchQueryUpdated({ target: { value: '' } });
    this.props.selectCrossing(null, null);
    this.setState({ typedValue: '', selectedValue: null });
  };

  updateCrossingSuggestions = suggestions => {
    console.log(suggestions);
    this.setState({
      crossingSuggestions: suggestions,
    });
  };

  onInputFocus = () => {
    this.props.toggleSearchFocus(true);
    console.log('INPUT FOCUS')
  }

  onInputBlur = () => {
    this.props.toggleSearchFocus(false);
    console.log('INPUT BLUR')
  }

  render() {
    const {
      selectedCrossingId,
      searchQueryUpdated,
      selectedCrossingName,
      communityId,
    } = this.props;

    console.log(communityId)

    const { typedValue, selectedValue, mapboxSuggestions, crossingSuggestions } = this.state;

    const suggestions = [
      {
        title: 'Crossings',
        suggestions: crossingSuggestions,
      },
      {
        title: 'Communities',
        suggestions: [],
      },
      {
        title: 'Locations',
        suggestions: mapboxSuggestions,
      },
    ];

    const value = selectedValue ? selectedValue : typedValue;

    // Autosuggest will pass through all these props to the input.
    const inputProps = {
      placeholder: 'Search...',
      value,
      onChange: this.onChange,
      onFocus: this.onInputFocus,
      onBlur: this.onInputBlur,
    };

    const formattedQuery = formatSearchQuery(typedValue);

    return (
      <div>
        <CrossingMapSearchCrossingSuggestions
          searchQuery={formattedQuery}
          communityId={communityId}
          updateSuggestions={this.updateCrossingSuggestions}
        />
        <div className="CrossingMapSearchBar__header">
          SEARCH FOR A PLACE, COMMUNITY, OR CROSSING
        </div>
        <div className="CrossingMapSearchBar__container">
          <div className="CrossingMapSearchBar__location-icon">
            <FontAwesome name="map-marker" size="2x" />
          </div>
          <div className="CrossingMapSearchBar__text-entry">
            {selectedCrossingId && (
              <div className="CrossingMapSearchBar__selected-item">
                {selectedCrossingName}
              </div>
            )}
            {!selectedCrossingId && (
              <Autosuggest
                ref={autosuggest => {
                  if (autosuggest !== null) {
                    autosuggestInput = autosuggest.input
                  }
                }}
                suggestions={suggestions}
                multiSection={true}
                getSectionSuggestions={getSectionSuggestions}
                renderSectionTitle={renderSectionTitle}
                onSuggestionsFetchRequested={this.onSuggestionsFetchRequested}
                onSuggestionsClearRequested={this.onSuggestionsClearRequested}
                onSuggestionSelected={this.onSuggestionSelected}
                onSuggestionHighlighted={this.onSuggestionHighlighted}
                getSuggestionValue={getSuggestionValue}
                renderSuggestion={renderSuggestion}
                inputProps={inputProps}
                shouldRenderSuggestions={() => true}
                focusInputOnSuggestionClick={false}
              />
            )}
          </div>
          <div
            className="CrossingMapSearchBar__cancel-icon"
            onClick={this.clearSearch}
          >
            <FontAwesome name="times" size="2x" />
          </div>
        </div>
      </div>
    );
  }
}

export default CrossingMapSearchBar;
