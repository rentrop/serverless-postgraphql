import moment from 'moment';

export default function Date({
  date
}) {
  return moment(date).calendar(null, {
    lastDay: '[Yesterday]',
    sameDay: '[Today]',
    sameElse: 'MM/DD/YYYY',
  });
}
