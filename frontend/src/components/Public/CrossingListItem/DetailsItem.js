import React from 'react';

import './DetailsItem.css';

export default function DetailsItem({ title, children }) {
  if (!children) {
    return null;
  }
  return (
    <div className="CrossingListItem__details-item">
      <div className="CrossingListItem__details-item-title">{title}</div>
      <div className="CrossingListItem__details-item-children">{children}</div>
    </div>
  );
}
