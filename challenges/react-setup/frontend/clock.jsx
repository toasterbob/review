import React from 'react';

class Clock extends React.Component {
  constructor(props){
    super(props);
    this.state = {time: "time"};
  }

  render(){
    return(
      <div>{this.state.time}</div>
    );
  }
}
