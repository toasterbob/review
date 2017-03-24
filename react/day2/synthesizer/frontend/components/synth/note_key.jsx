import React from 'react';

class NoteKey extends React.Component {
  constructor({note, pressed}){
    super({note, pressed});
    this.note = note;
    this.pressed = pressed;
  }

  render(){

    return(
      <div className={this.pressed ? "white-key-pressed" : "white-key"}>
        <div className="note-name">{this.note}</div>
      </div>
    );
  }
}

export default NoteKey;
