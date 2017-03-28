import React from 'react';

const Track = ({track, onPlay, disabled}) => (
  <div className='track' key={track.id}>{track.name} &nbsp; <button onClick={onPlay} disabled={disabled}>play</button></div>
);

export default Track;
