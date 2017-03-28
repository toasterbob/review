import React from 'react';

const Track = ({isRecording, isPlaying, onPlay}) => (
  <div>Track &nbsp; <button onClick={onPlay(track)} disabled={isRecording || isPlaying }>play</button></div>
);

export default Track;
