import React from 'react';

import './CrossingCommunityList.css'

export default function CrossingCommunityList({ crossing }) {
  return (
    <div className="CrossingCommunityList">
      {crossing.communities.nodes.map(community => (
        <a href="/" key={community.id}>
          {/* TODO: Link to community */}
          {community.name}
        </a>
      ))}
    </div>
  )
}
