import React from 'react';

const BlackKey = ({note, pressed, idx}) => (
  <div key={idx} className={pressed ? "black-key-pressed" : "black-key"}>
    <div key={idx} className="black-note-name">{note}</div>
  </div>
);

export default BlackKey;
