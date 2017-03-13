import React from "react";

class Clock extends React.Component {
  constructor(props) {
    super(props);
    this.state = { time: new Date() };

  }

  render() {

    return (
      <div className = "clock">
        Time:
        <br/><br/>
        Date: {this.state.time.toDateString()}
      </div>
    );
  }
}

export default Clock;
