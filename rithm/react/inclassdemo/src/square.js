import React, {Component} from 'react';

class Square extends Component {
  render(){
    const style = {
      width: '50px',
      height: '50px',
      display: 'inline-block',
      backgroundColor: this.props.color
    };
    return (<div style={style}>
              hi
            </div>);
  }
}

export default Square
