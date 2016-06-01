import React from 'react';
import { render } from 'react-dom';
import { IdeaBox } from './IdeaBox';

if($("#react-root")) {
  render(<IdeaBox title='IdeaBox' />, document.getElementById('react-root'));
}
