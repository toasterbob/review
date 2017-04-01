import React from "react";

const Recorder = ({ startRecording, stopRecording, isRecording, isPlaying}) => (
  <div className="recorder">
    <br/>
    <h2>Record your song!</h2>
    <div className="buttons">
      <div>
        <button onClick={startRecording} disabled={isRecording || isPlaying }>start</button>
      </div>
      <div>
        <button onClick={stopRecording} disabled={!isRecording}>stop</button>
      </div>
    </div>
  </div>
);


export default Recorder;
