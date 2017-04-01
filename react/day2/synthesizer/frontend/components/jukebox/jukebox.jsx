import React from 'react';
import Track from './track';

const Jukebox = ({tracks, isRecording, isPlaying, onPlay, onDelete}) => (
  <div>
    <div className="play"><h3>Play recordings</h3></div>
    <div className="track-list">
      {Object.keys(tracks).map(id => (
        <Track
          key={id}
          track={tracks[id]}
          disabled={isRecording || isPlaying}
          onPlay={onPlay(tracks[id])}
          onDelete={onDelete(id)}
        />
      ))}
    </div>

  </div>
);

export default Jukebox;
