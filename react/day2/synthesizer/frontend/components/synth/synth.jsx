import React from 'react';
import { NOTE_NAMES, TONES, BLACKS } from '../../util/tones';
import Note from '../../util/note';
import $ from 'jquery';
import NoteKey from './note_key';
import BlackKey from './black_key';

class Synth extends React.Component {
  constructor(props){
    super(props);
    this.notes = NOTE_NAMES.map(note => new Note(TONES[note]));
    this.onKeyDown = this.onKeyDown.bind(this);
    this.onKeyUp = this.onKeyUp.bind(this);
    this.playNotes = this.playNotes.bind(this);
  }

  onKeyDown(e){
    this.props.keyPressed(e.key);

  }

  onKeyUp(e){
    this.props.keyReleased(e.key);

  }

  playNotes(){
    NOTE_NAMES.forEach((note, idx) => {
      if(this.props.notes.indexOf(note) !== -1){
        this.notes[idx].start();
      } else {
        this.notes[idx].stop();
      }
    });
  }

 
  componentDidMount() {
    $(document).on('keydown', e => this.onKeyDown(e));
    $(document).on('keyup', e => this.onKeyUp(e));
  }

  render() {
    this.playNotes();
    window.notes = this.notes;
    let notes = NOTE_NAMES.map((note, idx) => (
      BLACKS.includes(note) ?
      <div><BlackKey key={idx} idx={idx} note={note} pressed={this.props.notes.includes(note)}/></div> :
      <div><NoteKey key={idx} idx={idx} note={note} pressed={this.props.notes.includes(note)}/></div>
    )
    );
    return(
      <div className="keyboard">
        {notes}

      </div>

    );
  }
}

export default Synth;
