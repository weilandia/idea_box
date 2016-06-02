import React, { Component } from 'react';

export function Idea({ idea }) {
  return (
    <div id={idea._id.$oid} className="idea" data-quality={idea.quality}>
      <div className="row idea-header">
        <div className="col-xs-12">
          <span className="delete-idea pointer">x</span>
          <div className="float-right row">
            <div className="col-xs-12 upvote-div">
              <div className="upvote pointer">+</div>
            </div>
          </div>
          <br></br>
          <div className="float-right row">
            <div className="col-xs-12 downvote-div">
              <div className="downvote pointer">-</div>
            </div>
          </div><br></br>
          <span className="title pointer">{idea.title}</span><span className="quality light">({idea.quality})</span>
        </div>
      </div>
      <div className="row">
        <div className="col-xs-12">
          <p className="body pointer">{idea.body}</p>
        </div>
      </div>
    </div>
  );
}
