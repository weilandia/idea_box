import React, { Compnent } from 'react';

export function Ideas(ideas) {

  return (
    <div className="ideas col-xs-12 col-sm-7">
        <div id="<%= idea.id %>" className="idea" data-quality="<%= idea.quality %>">
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
              <span className="title pointer">TITLE</span><span className="quality light">(QUALITY)</span>
            </div>
          </div>
          <div className="row">
            <div className="col-xs-12">
              <p className="body pointer">BODY</p>
            </div>
          </div>
        </div>
    </div>
  );
}
