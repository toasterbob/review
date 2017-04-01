import React from 'react';

const Track = ({track, onPlay, disabled, onDelete}) => (
  <div className='track' key={track.id}>
    {track.name} &nbsp; <button onClick={onPlay} disabled={disabled}>play</button>
  &nbsp; <button onClick={onDelete}>delete</button>
  </div>
);

export default Track;
