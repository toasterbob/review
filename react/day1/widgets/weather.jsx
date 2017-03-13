import React from 'react';

class Weather extends React.Component {
  constructor(props){
    super(props);

  }

  render() {
    return (
      <div className = "weather">
        San Francisco
        <br/>
        54.0 Degrees
      </div>
    );
  }

}

export default Weather;
