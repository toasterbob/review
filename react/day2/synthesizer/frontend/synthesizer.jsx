import React from "react";
import ReactDOM from 'react-dom';
import Note from './util/note';
import configureStore from './store/store';

document.addEventListener("DOMContentLoaded", function(){
  const store = configureStore();
  ReactDOM.render(<div>"Hello"</div>, document.getElementById('root'));
});

window.Note = Note;
window.store = store; 
