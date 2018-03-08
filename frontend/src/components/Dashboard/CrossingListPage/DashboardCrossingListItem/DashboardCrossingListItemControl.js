import React from 'react';
import PropTypes from 'prop-types';

import './DashboardCrossingListItemControl.css';

export default function DashboardCrossingListItemControl({
  isRequired,
  label,
  children,
}) {
  return (
    <div className="DashboardCrossingListItem__control">
      <div className="DashboardCrossingListItem__control-meta">
        <div className="DashboardCrossingListItem__control-label">{label}</div>
        {isRequired && (
          <div className="DashboardCrossingListItem__control-required">
            Required
          </div>
        )}
      </div>
      <div className="DashboardCrossingListItem__control-children">
        {children}
      </div>
    </div>
  );
}

DashboardCrossingListItemControl.propTypes = {
  isRequired: PropTypes.bool,
  label: PropTypes.node.isRequired,
  children: PropTypes.node.isRequired,
};

DashboardCrossingListItemControl.defaultProps = {
  DashboardCrossingListItemControl: false,
};
