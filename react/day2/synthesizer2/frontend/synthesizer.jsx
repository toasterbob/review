import React from "react";
import ReactDOM from 'react-dom';
import Note from './util/note';

document.addEventListener("DOMContentLoaded", function(){
  ReactDOM.render(<div>"Hello"</div>, document.getElementById('root'));
}); 

window.Note = Note;
