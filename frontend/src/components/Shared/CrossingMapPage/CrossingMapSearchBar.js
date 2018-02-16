import React, { Component } from 'react';
import 'components/Shared/CrossingMapPage/CrossingMapSearchBar.css';
import FontAwesome from 'react-fontawesome';
import Autosuggest from 'react-autosuggest';
import MapboxClient from 'mapbox';

const mapboxClient = new MapboxClient('pk.eyJ1IjoiY3Jvd2VhdHgiLCJhIjoiY2o1NDFvYmxkMHhkcDMycDF2a3pseDFpZiJ9.UcnizcFDleMpv5Vbv8Rngw');

// When suggestion is clicked, Autosuggest needs to populate the input
// based on the clicked suggestion. Teach Autosuggest how to calculate the
// input value for every given suggestion.
const getSuggestionValue = suggestion => suggestion.place_name;

// Use your imagination to render suggestions.
const renderSuggestion = suggestion => (
  <div>
    {suggestion.place_name}
  </div>
);

const renderSectionTitle = section => {
  return (
    <strong>{section.title}</strong>
  );
}

const getSectionSuggestions = section => {
  return section.suggestions;
}

class CrossingMapSearchBar extends Component {

  constructor() {
    super();

    // Autosuggest is a controlled component.
    // This means that you need to provide an input value
    // and an onChange handler that updates this value (see below).
    // Suggestions also need to be provided to the Autosuggest,
    // and they are initially empty because the Autosuggest is closed.
    this.state = {
      value: '',
      mapboxSuggestions: []
    };
  }

  onChange = (event, { newValue }) => {
    this.setState({
      value: newValue
    });
  };

  onSuggestionSelected = (event, { suggestion, suggestionValue, suggestionIndex, sectionIndex, method }) => {
    this.props.setCenter(suggestion.center);
  }

  // Autosuggest will call this function every time you need to update suggestions.
  onSuggestionsFetchRequested = ({ value }) => {
    console.log(value);
    const { center } = this.props;

    const inputValue = value.trim().toLowerCase();
    const inputLength = inputValue.length;

    if(inputLength > 2) {
      mapboxClient.geocodeForward(inputValue, {
        proximity: { latitude: center.lat, longitude: center.lng }
      }, (err, res) => {
        this.setState({mapboxSuggestions: res.features});
      });
    } else {
      this.setState({mapboxSuggestions: []});
    }
  };

  // Autosuggest will call this function every time you need to clear suggestions.
  onSuggestionsClearRequested = () => {
    this.setState({
      mapboxSuggestions: []
    });
  };

  clearSearch = () => {
    this.props.searchQueryUpdated({target:{value:''}});
    this.props.selectCrossing(null,null);
    this.setState({value: ''});
  }

  render() {
    const { searchQuery, selectedCrossingId, searchQueryUpdated, selectedCrossingName } = this.props;

    const { value, mapboxSuggestions } = this.state;

    const suggestions = [
      {
        title: 'Crossings',
        suggestions: []
      },
      {
        title: 'Communities',
        suggestions: []
      },
      {
        title: 'Locations',
        suggestions: mapboxSuggestions
      }
    ];

    // Autosuggest will pass through all these props to the input.
    const inputProps = {
      placeholder: 'Search...',
      value,
      onChange: this.onChange
    };

    return (
      <div>
        <div className="CrossingMapSearchBar__header">
          SEARCH FOR A PLACE, AREA, OR CROSSING
        </div>
        <div className="CrossingMapSearchBar__container">
          <div className="CrossingMapSearchBar__location-icon">
            <FontAwesome name='map-marker' size='2x'/>  
          </div>
          <div className="CrossingMapSearchBar__text-entry">
          { selectedCrossingId && <div className="CrossingMapSearchBar__selected-item">{selectedCrossingName}</div> }
          { !selectedCrossingId &&
            <Autosuggest
              suggestions={suggestions}
              multiSection={true}
              getSectionSuggestions={getSectionSuggestions}
              renderSectionTitle={renderSectionTitle}
              onSuggestionsFetchRequested={this.onSuggestionsFetchRequested}
              onSuggestionsClearRequested={this.onSuggestionsClearRequested}
              onSuggestionSelected={this.onSuggestionSelected}
              getSuggestionValue={getSuggestionValue}
              renderSuggestion={renderSuggestion}
              inputProps={inputProps}
            />
          }    
          </div>
          <div className="CrossingMapSearchBar__cancel-icon" onClick={this.clearSearch}>
            <FontAwesome name='times' size='2x'/>  
          </div>
        </div>
      </div>
    );
  }
}

export default CrossingMapSearchBar;

/*


          { !selectedCrossingId &&
            <div className="CrossingMapSearchBar__text-entry">
              <input type="text"
                     placeholder="Search..."
                     value={searchQuery}
                     onChange={searchQueryUpdated} />
            </div> 
          }
          { !selectedCrossingId && 
            <div className="CrossingMapSearchBar__glass-icon">
              <FontAwesome name='search' size='2x'/>  
            </div>
          }

*/
