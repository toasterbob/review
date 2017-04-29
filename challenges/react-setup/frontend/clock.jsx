import React from 'react';

class Clock extends React.Component {
  constructor(props){
    super(props);
    let time = new Date();
    let hours = time.getHours() % 12;
    hours = hours == 0 ? 12 : hours;
    let mins = time.getMinutes();
    let secs = time.getSeconds();
    this.state = {hours: hours, mins: mins, secs: secs};
    this.updateTime = this.updateTime.bind(this);
    setInterval(this.updateTime, 1000);
  }

  updateTime(){
    let secs = this.state.secs + 1;
    let mins = this.state.mins;
    let hours = this.state.hours;
    if (secs > 59){
      secs = 0;
      mins++;
    }

    if (mins > 59){
      mins = 0;
      hours++;
    }

    if (hours > 12){
      hours = 1;
    }

    this.setState({secs: secs, mins: mins, hours: hours});
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
