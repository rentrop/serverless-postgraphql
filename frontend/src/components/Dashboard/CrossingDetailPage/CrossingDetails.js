import React, { Component } from 'react';
import gql from 'graphql-tag';
import { graphql } from 'react-apollo';
import crossingFragment from 'components/Dashboard/CrossingListPage/queries/crossingFragment';
import FontAwesome from 'react-fontawesome';
import classnames from 'classnames';
import 'components/Dashboard/CrossingDetailPage/CrossingDetails.css';

class CrossingDetails extends Component {
  constructor(props) {
    super(props);
    this.state = {
      name: props.crossing.name,
      description: props.crossing.description,
      delete: false
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

  deleteCrossing = (e) => {
//TODO: add delete functionality    
    console.log('DELETE CROSSING');
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
    this.setState({delete: true});
  }
  deleteCancelClicked =() => {
    this.setState({delete: false});
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

      <div className={classnames("CrossingDetails", {"dirty-container--dirty":this.isDirty()} ,"dirty-container mlv2 plv2")}>   

        <div className="CrossingDetails__details">
          <div><span className="strong gray--75 mlv1--r">ID#</span> <span className="italic light gray--50">{crossing.id}</span></div>
          <div><span className="strong gray--75 mlv1--r">GPS</span> <span className="italic light gray--50">{crossing.humanCoordinates}</span></div>
          <div><span className="strong gray--75 mlv1--r">Address</span> <span className="italic light gray--50">{crossing.humanAddress}</span></div>

          <input className="input input--lg mlv2--t" type="text" value={this.state.name} onChange={this.nameChanged}/>
          <input className="input mlv2--t" type="text" value={this.state.description} onChange={this.descriptionChanged}/>

          <div className="CrossingDetails__communities mlv2--t">
              {
                communities.map((community) => {
                  return (
                    <button 
                      key={community.id} 
                      className="button button--secondary mlv2--r mlv2--b"
                    >{community.name} <FontAwesome name="times" />
                    </button>
                  );
                })
              }
          </div>
        </div>

        {this.isDirty() ? (
          <div className="CrossingDetails__buttons flexcontainer">
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
          <div className="CrossingDetails__buttons flexcontainer">
            <button 
              className="button button--plaintext color-highlight"
              onClick={this.deleteClicked}
            >Delete Crossing</button>
          </div>
        )}

        { this.state.delete && (
          <div className="CrossingDetails__delete overlay-container flexcontainer--center">
            <div className="plv2">
            <p>The historical data for this crossing will be saved, but you will no longer be able to view or change the change this crossing's status</p>
            <p>Do you want to continue?</p>
            <div className="flexcontainer">
              <button 
                className="flexitem button button--cancel mlv2--r"
                onClick={this.deleteCancelClicked}
              >No, Go Back</button>
              <button 
                className="flexitem button button--confirm mlv2--l" 
                onClick={this.deleteCrossing}
              >Yes, Delete</button>
            </div>
            </div>
          </div>
        )}
      </div>
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
