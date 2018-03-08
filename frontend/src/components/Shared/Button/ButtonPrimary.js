import React from 'react';
import classnames from 'classnames';

import Button, { ButtonPropTypes } from './Button';

export default function ButtonPrimary({ className, ...props }) {
  return (
    <Button
      className={classnames(className, 'Shared__button--primary')}
      {...props}
    />
  );
}

ButtonPrimary.propTypes = ButtonPropTypes;
