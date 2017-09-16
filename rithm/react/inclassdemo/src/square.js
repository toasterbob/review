import React, {Component} from 'react';

class Square extends Component {
  render(){
    const style = {
      width: '180px',
      height: '180px',
      display: 'inline-block',
      backgroundColor: this.props.color
    };
    return (<div style={style}>
              hi
            </div>);
  }
}

export default Square
