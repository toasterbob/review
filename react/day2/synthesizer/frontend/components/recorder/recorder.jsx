import React from "react";

class Recorder extends React.Component {
  constructor(props){
    super(props);
  }

  render(){

    return(
      <div className="recorder">
        <br/>
        <h2>Record your song!</h2>
        <div className="buttons">
          <div>
            <button>start</button>
          </div>
          <div>
            <button>stop</button>
          </div>
        </div>
      </div>
    );
  }
}

export default Recorder;
