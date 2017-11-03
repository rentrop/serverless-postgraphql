import React, { Component } from 'react';
import gql from 'graphql-tag';
import { graphql } from 'react-apollo';
import crossingFragment from 'components/Dashboard/CrossingListPage/queries/crossingFragment';
import ReactMapboxGl, { Layer, Feature } from "react-mapbox-gl";
import mapboxstyle from 'components/Map/mapboxstyle.json';
import FontAwesome from 'react-fontawesome';
import classnames from 'classnames';
import { ContainerQuery } from 'react-container-query';
import { LARGE_ITEM_MIN_WIDTH } from 'constants/containerQueryConstants';
import 'components/Dashboard/CrossingDetailPage/CrossingDetails.css';

const containerQuery = {
  'CrossingDetails--lg': {
    minWidth: LARGE_ITEM_MIN_WIDTH,
  }
};

const Map = ReactMapboxGl({ accessToken: null, interactive: false });

class CrossingDetails extends Component {
  constructor(props) {
    super(props);
    this.state = {
      name: props.crossing.name,
      description: props.crossing.description
    };
  }

  updateCrossing = (e) => {

    this.props.updateCrossingMutation({
      variables: {
        crossingId: this.props.crossing.id,
        name: this.state.name,
        description: this.state.description
      },
      update: (store, {data: {editCrossing}}) => {
        const updatedCrossing = editCrossing.crossing;        
        store.writeFragment({
          id: 'Crossing:' + updatedCrossing.id,
          fragment: crossingFragment,
          data: updatedCrossing
        });
      },  
    })
    .then(({ data }) => {
      console.log('success', data);
    }).catch((error) => {
      console.log('there was an error sending the query', error);
    });
  }

  nameChanged = (e) => { 
    this.setState({ 
      name: e.target.value
    });
  }
  descriptionChanged = (e) => { 
    this.setState({ 
      description: e.target.value
    });
  }
  cancelClicked = () => {
    this.setState({
      name: this.props.crossing.name,
      description: this.props.crossing.description
    });
  }
  deleteClicked = () => {
    console.log('show delete overlay');
  }

  isDirty() {
    return (
      this.props.crossing.name !== this.state.name ||
      this.props.crossing.description !== this.state.description
    );
  }

  render() {
    const { crossing, communities } = this.props;

    return (
      <ContainerQuery query={containerQuery}>
        {(params) => (
          <div className={classnames(params, "CrossingDetails mlv2--b")}>

            <Map
              className="CrossingDetails__map mlv2"
              center={JSON.parse(crossing.geojson).coordinates}
              style={mapboxstyle}
            >
              <Layer
                type="symbol"
                id="marker"
                layout={{'icon-image':'circle-15'}}
              >
                <Feature coordinates={JSON.parse(crossing.geojson).coordinates}/>
              </Layer>
            </Map>

            <div className={classnames({"CrossingDetails__details--dirty":this.isDirty()}, "CrossingDetails__details mlv2 plv2")}>   
              <div>
                <div>
                  <span className="strong gray--75 mlv1--r">ID#</span> <span className="italic light gray--50">{crossing.id}</span>
                </div>
                <div>
                  <span className="strong gray--75 mlv1--r">GPS</span> <span className="italic light gray--50">{crossing.humanCoordinates}</span>
                </div>
                <div>
                  <span className="strong gray--75 mlv1--r">Address</span> <span className="italic light gray--50">{crossing.humanAddress}</span>
                </div>

                <input className="input input--lg mlv2--t" type="text" value={this.state.name} onChange={this.nameChanged}/>

                <input className="input mlv2--t" type="text" value={this.state.description} onChange={this.descriptionChanged}/>

                <div className="CrossingDetails__communities mlv2--t">
                    {
                      communities.map((community) => {
                        return (
                          <button 
                            key={community.id} 
                            className="button button--secondary"
                          >{community.name} <FontAwesome name="times" />
                          </button>
                        );
                      })
                    }
                </div>
              </div>

              {this.isDirty() ? (
                <div className="flexcontainer">
                  <button 
                    className="flexitem button button--cancel mlv2--r"
                    onClick={this.cancelClicked}
                  >Cancel</button>
                  <button 
                    className="flexitem button button--confirm mlv2--l" 
                    onClick={this.updateCrossing}
                  >Save</button>
                </div>
              ) : (
                <div className="flexcontainer">
                  <span className="button button--plaintext">Delete Crossing</span>
                </div>
              )}

            </div>
          </div>
        )}
      </ContainerQuery>
    );
  }

}

/**/

const updateCrossingMutation = gql`
  mutation editCrossing($crossingId: Int!, $name: String!, $description: String!) {
    editCrossing(input: {crossingId: $crossingId, name: $name, description: $description}) {
      crossing {
        id
        name
        description
      }
    }
  }
`;

export default graphql(updateCrossingMutation, { name: 'updateCrossingMutation' })(CrossingDetails);
