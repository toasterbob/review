import React from 'react';
import Track from './track';

const Jukebox = ({tracks, isRecording, isPlaying, onPlay}) => (
  <div className="play"><h3>Play recordings</h3></div>
  <div className="track-list">
    {Object.keys(tracks).map(id => (
      <Track />
    ))}
  </div>
);

export default Jukebox;
