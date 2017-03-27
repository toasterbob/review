import React from "react";

class Recorder extends React.Component {
  constructor(props){
    super(props);
  }

  render(){
    let startRecording = this.props.startRecording;
    let stopRecording = this.props.stopRecording;
    return(
      <div className="recorder">
        <br/>
        <h2>Record your song!</h2>
        <div className="buttons">
          <div>
            <button onClick={startRecording}>start</button>
          </div>
          <div>
            <button onClick={stopRecording}>stop</button>
          </div>
        </div>
      </div>
    );
  }
}

export default Recorder;
