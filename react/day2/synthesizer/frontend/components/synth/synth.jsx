import React from 'react';
import { NOTE_NAMES, TONES } from '../../util/tones';
import Note from '../../util/note';
import $ from 'jquery';

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
    console.log(this.props.notes);
    this.notes[0].play();
  }

  onKeyUp(e){
    this.props.keyReleased(e.key);
    console.log(this.props.notes);
    this.notes[0].stop();
  }

  playNotes(){
    NOTE_NAMES.forEach((note, idx) => {
      if(this.props.notes.indexOf(note) !== -1){
        this.notes[idx].play();
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
    return(
      <div>
        Synth

      </div>

    );
  }
}

export default Synth;
