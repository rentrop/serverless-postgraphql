import { statusNames } from 'constants/StatusConstants';

export default function StatusName({ statusId }) {
  return statusNames[statusId];
}
