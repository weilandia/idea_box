import React, { Component } from 'react';
import { Idea } from './idea';

export function Ideas({ ideas }) {
  return (
    <div className="ideas col-xs-12 col-sm-7">
      {ideas.map(idea => <Idea idea={idea} key={idea._id.$oid} />)}
    </div>
  );
}
