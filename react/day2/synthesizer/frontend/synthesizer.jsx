import React from "react";
import ReactDOM from 'react-dom';
import Note from './util/note';
import configureStore from './store/store';
import Root from './components/root';

document.addEventListener("DOMContentLoaded", function(){
  const store = configureStore();
  ReactDOM.render(<Root store={store} />, document.getElementById('root'));
  window.store = store;
});


window.Note = Note;
