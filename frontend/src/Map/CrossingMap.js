import React from 'react';
import mapboxstyle from './mapboxstyle';
import { graphql } from 'react-apollo';
import gql from 'graphql-tag';
import ReactMapboxGl, { Layer, Feature } from "react-mapbox-gl";

const Map = ReactMapboxGl({ accessToken: null });

class CrossingMap extends React.Component {

  render () {
    if (this.props.data.loading) {
      return (<div>Loading</div>)
    }

    if (this.props.data.allCrossings == null) {
      // TODO: add error logging
      return (<div>Error Loading Crossings</div>);
    }

    var openCrossings = this.props.data.allCrossings.nodes.filter((crossing) => crossing.statusUpdateByLatestStatusId.statusId === 1);
    var closedCrossings = this.props.data.allCrossings.nodes.filter((crossing) => crossing.statusUpdateByLatestStatusId.statusId === 2);

    return (
      <Map
        style={mapboxstyle}
        containerStyle={{
          height: this.props.mapHeight,
          width: this.props.mapWidth,
          display: "block"
        }}
        fitBounds={this.props.viewport}>

        <Layer
          type="symbol"
          id="closedCrossings"
          layout={{ 'icon-image': 'cross-15', 'icon-allow-overlap': true }}
          >
          {
            closedCrossings.map((crossing, i) => {
              return(
                   <Feature key={i} coordinates={JSON.parse(crossing.geojson).coordinates}/>
              )}
            )
          }
        </Layer>
        <Layer
          type="symbol"
          id="openCrossings"
          layout={{ 'icon-image': 'circle-15', 'icon-allow-overlap': true }}
          >
          {
            openCrossings.map((crossing, i) => {
              return(
                   <Feature key={i} coordinates={JSON.parse(crossing.geojson).coordinates}/>
              )}
            )
          }
        </Layer>
      </Map>
    );
  }

}

const allCrossings = gql`
  query allCrossings {
    allCrossings {
      nodes {
        id
        name
        geojson
        statusUpdateByLatestStatusId {
          statusId
        }
      }
    }
  }
`;

export default graphql(allCrossings)(CrossingMap);
