import React from 'react';
import PropTypes from 'prop-types';
import classnames from 'classnames';

import './Button.css';

export default function Button({ onClick, className, children, ...props }) {
  return (
    <button
      className={classnames('Shared__button', className)}
      onClick={onClick}
      {...props}
    >
      {children}
    </button>
  );
}

export const ButtonPropTypes = {
  onClick: PropTypes.func.isRequired,
  className: PropTypes.string,
  children: PropTypes.node.isRequired,
};

Button.propTypes = ButtonPropTypes
