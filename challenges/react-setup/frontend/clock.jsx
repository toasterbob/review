import React from 'react';

class Clock extends React.Component {
  constructor(props){
    super(props);
    let time = new Date();
    let hours = time.getHours() % 12;
    let mins = time.getMinutes();
    let secs = time.getSeconds();
    this.state = {hours: hours, mins: mins, secs: secs};
    setInterval(this.updateTime, 1000);
  }

  updateTime(){
    let secs = this.state.secs + 1;
    this.setState({secs: secs});
  }

  render(){
    let hours = this.state.hours < 10 ? `0${this.state.hours}` : this.state.hours;
    let mins = this.state.mins < 10 ? `0${this.state.mins}` : this.state.mins;
    let secs = this.state.secs < 10 ? `0${this.state.secs}` : this.state.secs;
    return(
      <div>{hours}:{mins}:{secs}</div>
    );
  }
}

export default Clock;
