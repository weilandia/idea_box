import React, { Component } from 'react';
import { IdeaForm } from './IdeaForm';
import { Ideas } from './Ideas';

export class IdeaBox extends Component {
  constructor() {
    super();
  }

  componentDidMount() {
    this.serverRequest = $.get('/api/ideas', function(result) {
      let ideas = result;
      this.setState({
        ideas: ideas
      });
    }.bind(this));
  }

  render() {
    return (
      <div className="container-fluid">
        <div className="row">
          <IdeaForm />
          <Ideas ideas={this.state.ideas}/>
        </div>
      </div>
    );
  }
}
