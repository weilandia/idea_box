import React, { Compnent } from 'react';

export function IdeaForm() {
  return (
    <div className="idea-forms col-xs-11 col-sm-5">
      <div className="idea-create">
        <h1 className="appname">ideabox</h1>
        <form id="ajax-create-idea">
          <input type="text" name="title" id="title" placeholder="idea title" className="form-control idea-title" required maxlength="35"></input>
          <textarea name="body" id="body" placeholder="idea body" className="form-control idea-body" required maxlength="100"></textarea>
          <input type="submit" name="commit" value="save" className="btn btn-primary idea-button"></input>
        </form>
        <br></br>
        <input type="text" name="idea-search" id="idea-search" placeholder="search ideas" className="form-control idea-title"></input>
        <br></br>
        <button type="button" name="commit" value="all" className="btn btn-primary idea-button filter-button active-filter">all</button>
        <button type="button" name="commit" value="maybe" className="btn btn-primary idea-button filter-button">maybe</button>
        <button type="button" name="commit" value="yes" className="btn btn-primary idea-button filter-button">yes</button>
        <button type="button" name="commit" value="now" className="btn btn-primary idea-button filter-button">now</button>
      </div>
    </div>
  );
}
