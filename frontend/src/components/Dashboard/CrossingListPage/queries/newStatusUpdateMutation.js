import gql from 'graphql-tag';
import statusUpdateFragment from 'components/Dashboard/CrossingListPage/queries/statusUpdateFragment';

const newStatusUpdateMutation = gql`
  mutation newStatusUpdate(
    $crossingId: Int,
    $statusId: Int,
    $reasonId: Int,
    $durationId: Int,
    $notes: String
  ) {
    newStatusUpdate(input: 
      {
        crossingId: $crossingId,
        statusId: $statusId,
        statusReasonId: $reasonId,
        statusDurationId: $durationId,
        notes: $notes
      }) {
      statusUpdate {
        crossingId
        crossingByCrossingId {
          geojson
          ...statusUpdateInfo
        }
      }
    }
  }
  ${statusUpdateFragment}
`;

export default newStatusUpdateMutation;
