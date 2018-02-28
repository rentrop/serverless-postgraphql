import React from 'react';

import { statusNames, statusIcons } from 'constants/StatusConstants';

export default function StatusIcon({ statusId, ...props }) {
  return (
    <img
      src={statusIcons[statusId]}
      alt={statusNames[statusId]}
      {...props}
    />
  );
}
