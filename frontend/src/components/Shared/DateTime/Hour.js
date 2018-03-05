import moment from 'moment';

export default function Date({
  date
}) {
  return moment(date).format('h:mm A');
}
