import React, {Component} from 'react';

class Square extends Component {
  render(){
    const style = {
      width: '40px',
      height: '40px',
      display: 'inline-block',
      backgroundColor: this.props.color
    };
    return (<div style={style}>
              <br/>
            </div>);
  }
}

export default Square
