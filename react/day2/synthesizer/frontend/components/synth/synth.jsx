import React from 'react';
import { NOTE_NAMES, TONES } from '../../util/tones';
import Note from '../../util/note';

class Synth extends React.Component {
  constructor(props){
    super(props);
    this.notes = NOTE_NAMES.map(note => new Note(TONES[note]));
  }

  render() {
    return(
      <div>Synth</div>
    );
  }
}

export default Synth;
