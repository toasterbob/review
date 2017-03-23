import React from 'react';

class NoteKey extends React.Component {
  constructor({note, pressed}){
    super({note, pressed});
    this.note = note;
  }

  render(){

    return(
      <div className="key">{this.note}</div>
    );
  }
}

export default NoteKey;
