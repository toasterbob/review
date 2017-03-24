import React from 'react';

const NoteKey = ({note, pressed, idx}) => (
  <div key={idx} className={pressed ? "white-key-pressed" : "white-key"}>
    <div key={idx} className="note-name">{note}</div>
  </div>
);

export default NoteKey;
