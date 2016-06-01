import React, { Component } from 'react';
import { IdeaForm } from './IdeaForm';
import { Ideas } from './Ideas';

export class IdeaBox extends Component {
  constructor() {
    super();
    this.state = {
      ideas: []
    };
  }

  componentDidMount() {
    this.state.ideas.push(1);
  }

  render() {
    return (
      <div className="container-fluid">
        <div className="row">
          <Ideas ideas={this.state.ideas}/>
        </div>
      </div>
    );
  }
}
