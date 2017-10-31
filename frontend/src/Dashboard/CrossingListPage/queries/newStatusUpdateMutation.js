import gql from 'graphql-tag';
import crossingFragment from 'Dashboard/CrossingListPage/queries/crossingFragment';

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
          ...crossingInfo
        }
      }
    }
  }
  ${crossingFragment}
`;

export default newStatusUpdateMutation;
