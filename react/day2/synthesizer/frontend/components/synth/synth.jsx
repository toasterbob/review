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
  }

  onKeyDown(e){
    this.props.keyPressed(e.key);
    console.log(e.key);
  }

  onKeyUp(e){
    this.props.keyReleased(e.key);
    console.log(e.key);
  }

  componentDidMount() {
    $(document).on('keydown', e => this.onKeyDown(e));
    $(document).on('keyup', e => this.onKeyUp(e));
  }

  render() {
    window.notes = this.notes;
    console.log(this.notes);
    return(
      <div>
        Synth

      </div>

    );
  }
}

export default Synth;
