import PropTypes from 'prop-types';

export default function User({ user }) {
  return user.firstName.substring(0, 1) + '. ' + user.lastName;
}

User.propTypes = {
  user: PropTypes.shape({
    firstName: PropTypes.string.isRequired,
    lastName: PropTypes.string.isRequired,
  }),
  datetime: PropTypes.string.isRequired,
};
