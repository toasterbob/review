import React from 'react';

class NoteKey extends React.Component {
  constructor({note, pressed, idx}){
    super({note, pressed, idx});
    this.note = note;
    this.pressed = pressed;
    this.idx = idx;
  }

  render(){

    return(
      <div id={this.idx} className={this.pressed ? "white-key-pressed" : "white-key"}>
        <div id={this.idx} className="note-name">{this.note}</div>
      </div>
    );
  }
}

export default NoteKey;
