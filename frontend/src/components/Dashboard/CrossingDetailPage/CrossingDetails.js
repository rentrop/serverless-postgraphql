import React, { Component } from 'react';
import gql from 'graphql-tag';
import { graphql, compose } from 'react-apollo';
import updateCrossingFragment from 'components/Dashboard/CrossingListPage/queries/updateCrossingFragment';
import deleteCrossingFragment from 'components/Dashboard/CrossingListPage/queries/deleteCrossingFragment';
import addCrossingToCommunityFragment from 'components/Dashboard/CrossingListPage/queries/addCrossingToCommunityFragment';
import classnames from 'classnames';
import 'components/Dashboard/CrossingDetailPage/CrossingDetails.css';
import { Redirect } from 'react-router';
import Dropdown from 'components/Dashboard/Dropdown/Dropdown';
import _ from 'lodash';

class CrossingDetails extends Component {
  constructor(props) {
    super(props);

    const { crossing, allCommunities, crossingCommunities } = props;
    var dropdownCommunities = allCommunities.slice();
    _.pullAllBy(dropdownCommunities, crossingCommunities, 'id');

    this.state = {
      name: crossing.name,
      description: crossing.description,
      delete: false,
      addCommunity: false,
      selectedCommunityId:
        dropdownCommunities.length > 0 ? dropdownCommunities[0].id : null,
      communityToRemove: null,
      redirectToNewCrossingId: null,
      dropdownCommunities: dropdownCommunities,
    };
  }

  updateCrossing = e => {
    this.props
      .updateCrossingMutation({
        variables: {
          crossingId: this.props.crossing.id,
          name: this.state.name,
          description: this.state.description,
        },
        update: (store, { data: { editCrossing } }) => {
          const updatedCrossing = editCrossing.crossing;
          store.writeFragment({
            id: 'Crossing:' + updatedCrossing.id,
            fragment: updateCrossingFragment,
            data: updatedCrossing,
          });
        },
      })
      .then(({ data }) => {
        console.log('success', data);
      })
      .catch(error => {
        console.log('there was an error sending the query', error);
      });
  };

  addCrossing = e => {
    this.props
      .addCrossingMutation({
        variables: {
          name: this.state.name,
          humanAddress: this.state.humanAddress,
          description: this.state.description,
          communityId: this.props.currentUser.communityId,
          longitude: this.props.crossing.lng,
          latitude: this.props.crossing.lat,
        },
      })
      .then(({ data }) => {
        console.log('success', data);
        const { id } = data.newCrossing.crossing;
        this.setState({ redirectToNewCrossingId: id });
      })
      .catch(error => {
        console.log('there was an error sending the query', error);
      });
  };

  deleteCrossing = e => {
    this.props
      .deleteCrossingMutation({
        variables: {
          crossingId: this.props.crossing.id,
        },
        update: (store, { data: { removeCrossing } }) => {
          const deletedCrossing = removeCrossing.crossing;
          store.writeFragment({
            id: 'Crossing:' + deletedCrossing.id,
            fragment: deleteCrossingFragment,
            data: deletedCrossing,
          });
        },
      })
      .then(({ data }) => {
        console.log('success', data);
        this.setState({ delete: false });
      })
      .catch(error => {
        console.log('there was an error sending the query', error);
      });
  };

  addCommunity = e => {
    this.props
      .addCrossingToCommunityMutation({
        variables: {
          crossingId: this.props.crossing.id,
          communityId: this.state.selectedCommunityId,
        },
        update: (store, { data: { addCrossingToCommunity } }) => {
          const updatedCrossing = addCrossingToCommunity.crossing;
          store.writeFragment({
            id: 'Crossing:' + updatedCrossing.id,
            fragment: addCrossingToCommunityFragment,
            data: updatedCrossing,
          });
        },
      })
      .then(({ data }) => {
        console.log('success', data);

        const { allCommunities, crossingCommunities } = this.props;
        var dropdownCommunities = allCommunities.slice();
        _.pullAllBy(dropdownCommunities, crossingCommunities, 'id');

        this.setState({
          addCommunity: false,
          dropdownCommunities: dropdownCommunities,
          selectedCommunityId:
            dropdownCommunities.length > 0 ? dropdownCommunities[0].id : null,
        });
      })
      .catch(error => {
        console.log('there was an error sending the query', error);
      });
  };

  removeCommunity = e => {
    this.props
      .removeCrossingFromCommunityMutation({
        variables: {
          crossingId: this.props.crossing.id,
          communityId: this.state.communityToRemove.id,
        },
        update: (store, { data: { removeCrossingFromCommunity } }) => {
          const updatedCrossing = removeCrossingFromCommunity.crossing;
          store.writeFragment({
            id: 'Crossing:' + updatedCrossing.id,
            fragment: addCrossingToCommunityFragment,
            data: updatedCrossing,
          });
        },
      })
      .then(({ data }) => {
        console.log('success', data);

        const { allCommunities, crossingCommunities } = this.props;
        var dropdownCommunities = allCommunities.slice();
        _.pullAllBy(dropdownCommunities, crossingCommunities, 'id');

        this.setState({
          removeCommunity: false,
          dropdownCommunities: dropdownCommunities,
          selectedCommunityId:
            dropdownCommunities.length > 0 ? dropdownCommunities[0].id : null,
        });
      })
      .catch(error => {
        console.log('there was an error sending the query', error);
      });
  };

  nameChanged = e => {
    this.setState({
      name: e.target.value,
    });
  };
  descriptionChanged = e => {
    this.setState({
      description: e.target.value,
    });
  };
  humanAddressChanged = e => {
    this.setState({
      humanAddress: e.target.value,
    });
  };

  cancelClicked = () => {
    this.setState({
      name: this.props.crossing.name,
      description: this.props.crossing.description,
    });
  };
  deleteClicked = () => {
    this.setState({ delete: true });
  };
  deleteCancelClicked = () => {
    this.setState({ delete: false });
  };

  addCommunityClicked = () => {
    this.setState({ addCommunity: true });
  };
  addCommunityCancelClicked = () => {
    this.setState({ addCommunity: false });
  };

  removeCommunityClicked = community => {
    this.setState({ removeCommunity: true, communityToRemove: community });
  };
  removeCommunityCancelClicked = () => {
    this.setState({ removeCommunity: false, communityToRemoveId: null });
  };

  selectedCommunityChanged = e => {
    this.setState({ selectedCommunityId: e.target.value });
  };

  isDirty() {
    return (
      this.props.crossing.name !== this.state.name ||
      this.props.crossing.description !== this.state.description
    );
  }

  render() {
    // If we finished adding a crossing, we should redirect to the edit page
    if (this.state.redirectToNewCrossingId) {
      return (
        <Redirect
          push
          to={`/dashboard/crossing/${this.state.redirectToNewCrossingId}`}
        />
      );
    }

    const { crossing, crossingCommunities, addMode, currentUser } = this.props;
    const { dropdownCommunities, name, humanAddress, description } = this.state;

    return (
      <div
        className={classnames(
          'CrossingDetails',
          { 'dirty-container--dirty': this.isDirty() },
          'dirty-container mlv2 plv2',
        )}
      >
        <div className="CrossingDetails__details">
          {!addMode ? (
            <div>
              {!crossing.active ? (
                <div>
                  <span className="strong gray--75 mlv1--r">INACTIVE</span>
                </div>
              ) : null}
              <div>
                <span className="strong gray--75 mlv1--r">ID#</span>{' '}
                <span className="italic light gray--50">{crossing.id}</span>
              </div>
              <div>
                <span className="strong gray--75 mlv1--r">Address</span>{' '}
                <span className="italic light gray--50">
                  {crossing.humanAddress}
                </span>
              </div>
            </div>
          ) : null}

          <div>
            <span className="strong gray--75 mlv1--r">GPS</span>{' '}
            <span className="italic light gray--50">
              {crossing.humanCoordinates}
            </span>
          </div>

          <div className="mlv2--t">
            <div>
              <div>
                <span className="gray--75 mlv1--r">Display Name*</span>
              </div>
              <span className="light gray--25 mlv1--r">
                Name your crossings by intersections (ie, Onion Creek Blvd. &
                5th Ave) or waypoints (5th Ave. Denny's)
              </span>
            </div>
            <input
              id="crossingName"
              className="input input--lg"
              type="text"
              value={name ? name : ''}
              onChange={this.nameChanged}
            />
          </div>

          {addMode ? (
            <div className="mlv2--t">
              <div>
                <div>
                  <span className="gray--75 mlv1--r">Street Address*</span>
                </div>
                <span className="light gray--25 mlv1--r">
                  The human readable address for the crossing
                </span>
              </div>

              <input
                className="input"
                type="text"
                value={humanAddress ? humanAddress : ''}
                onChange={this.humanAddressChanged}
              />
            </div>
          ) : null}

          <div className="mlv2--t">
            <div>
              <div>
                <span className="gray--75 mlv1--r">
                  Additional Description (optional)
                </span>
              </div>
              <span className="light gray--25 mlv1--r">
                Does the location need additional clarification? ie, "Southbound
                lane only"
              </span>
            </div>
            <input
              id="crossingDescription"
              className="input"
              type="text"
              value={description ? description : ''}
              onChange={this.descriptionChanged}
            />
          </div>

          <div className="CrossingDetails__communities mlv2--t">
            {crossingCommunities.map(community => {
              return (
                <button
                  key={community.id}
                  className="button button--secondary mlv2--r mlv2--b"
                >
                  {community.name}
                  {currentUser.role === 'floods_super_admin' &&
                    crossingCommunities.length > 1 && (
                      <span
                        onClick={() => this.removeCommunityClicked(community)}
                      >
                        {' '}
                        X{' '}
                      </span>
                    )}
                </button>
              );
            })}
            {!this.state.addCommunity &&
              dropdownCommunities.length > 0 &&
              currentUser.role !== 'floods_community_editor' && (
                <button
                  className="button button--secondary mlv2--r mlv2--b"
                  onClick={this.addCommunityClicked}
                >
                  Add Community +
                </button>
              )}
          </div>
        </div>

        {this.state.addCommunity && (
          <div>
            <Dropdown
              options={dropdownCommunities}
              selected={this.state.selectedCommunityId}
              onChange={this.selectedCommunityChanged}
            />

            <div className="CrossingDetails__addCommunityButtons flexcontainer">
              <button
                className="flexitem button button--cancel mlv2--r"
                onClick={this.addCommunityCancelClicked}
              >
                Cancel
              </button>
              <button
                className="flexitem button button--confirm mlv2--l"
                onClick={this.addCommunity}
              >
                Save
              </button>
            </div>
          </div>
        )}

        {!addMode ? (
          this.isDirty() ? (
            <div className="CrossingDetails__buttons flexcontainer">
              <button
                className="flexitem button button--cancel mlv2--r"
                onClick={this.cancelClicked}
              >
                Cancel
              </button>
              <button
                className="flexitem button button--confirm mlv2--l"
                onClick={this.updateCrossing}
              >
                Save
              </button>
            </div>
          ) : (
            crossing.active &&
            currentUser.role !== 'floods_community_editor' &&
            crossingCommunities.length === 1 && (
              <div className="CrossingDetails__buttons flexcontainer">
                <button
                  className="button button--plaintext color-highlight"
                  onClick={this.deleteClicked}
                >
                  Delete Crossing
                </button>
              </div>
            )
          )
        ) : (
          <div className="CrossingDetails__buttons flexcontainer">
            <button
              className="flexitem button button--confirm mlv2--l"
              onClick={this.addCrossing}
            >
              Add Crossing
            </button>
          </div>
        )}

        {this.state.delete && (
          <div className="CrossingDetails__delete overlay-container flexcontainer--center">
            <div className="plv2">
              <p>
                The historical data for this crossing will be saved, but you
                will no longer be able to view or change the change this
                crossing's status
              </p>
              <p>Do you want to continue?</p>
              <div className="flexcontainer">
                <button
                  className="flexitem button button--cancel mlv2--r"
                  onClick={this.deleteCancelClicked}
                >
                  No, Go Back
                </button>
                <button
                  className="flexitem button button--confirm mlv2--l"
                  onClick={this.deleteCrossing}
                >
                  Yes, Delete
                </button>
              </div>
            </div>
          </div>
        )}

        {this.state.removeCommunity && (
          <div className="CrossingDetails__delete overlay-container flexcontainer--center">
            <div className="plv2">
              <p>
                This will remove the crossing from{' '}
                {this.state.communityToRemove.name}
              </p>
              <p>Do you want to continue?</p>
              <div className="flexcontainer">
                <button
                  className="flexitem button button--cancel mlv2--r"
                  onClick={this.removeCommunityCancelClicked}
                >
                  No, Go Back
                </button>
                <button
                  className="flexitem button button--confirm mlv2--l"
                  onClick={this.removeCommunity}
                >
                  Yes, Remove
                </button>
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
  mutation editCrossing(
    $crossingId: Int!
    $name: String!
    $description: String!
  ) {
    editCrossing(
      input: { crossingId: $crossingId, name: $name, description: $description }
    ) {
      crossing {
        id
        name
        description
      }
    }
  }
`;

const addCrossingMutation = gql`
  mutation addCrossing(
    $name: String!
    $humanAddress: String!
    $description: String!
    $communityId: Int!
    $longitude: Float!
    $latitude: Float!
  ) {
    newCrossing(
      input: {
        name: $name
        humanAddress: $humanAddress
        description: $description
        communityId: $communityId
        longitude: $longitude
        latitude: $latitude
      }
    ) {
      crossing {
        id
      }
    }
  }
`;

const deleteCrossingMutation = gql`
  mutation deleteCrossingMutation($crossingId: Int!) {
    removeCrossing(input: { crossingId: $crossingId }) {
      crossing {
        id
        active
      }
    }
  }
`;

const addCrossingToCommunityMutation = gql`
  mutation addCrossingToCommunityMutation(
    $crossingId: Int!
    $communityId: Int!
  ) {
    addCrossingToCommunity(
      input: { crossingId: $crossingId, communityId: $communityId }
    ) {
      crossing {
        id
        communityIds
        communities {
          nodes {
            id
            name
          }
        }
      }
    }
  }
`;

const removeCrossingFromCommunityMutation = gql`
  mutation removeCrossingFromCommunityMutation(
    $crossingId: Int!
    $communityId: Int!
  ) {
    removeCrossingFromCommunity(
      input: { crossingId: $crossingId, communityId: $communityId }
    ) {
      crossing {
        id
        communityIds
        communities {
          nodes {
            id
            name
          }
        }
      }
    }
  }
`;

export default compose(
  graphql(updateCrossingMutation, {
    name: 'updateCrossingMutation',
  }),
  graphql(addCrossingMutation, {
    name: 'addCrossingMutation',
  }),
  graphql(deleteCrossingMutation, {
    name: 'deleteCrossingMutation',
  }),
  graphql(addCrossingToCommunityMutation, {
    name: 'addCrossingToCommunityMutation',
  }),
  graphql(removeCrossingFromCommunityMutation, {
    name: 'removeCrossingFromCommunityMutation',
  }),
)(CrossingDetails);
