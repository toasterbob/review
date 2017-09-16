import React, {Component} from 'react';
import Square from './square';

class Grid extends Component {
  render(){

    return (<div>
            <Square color="yellow"/>
            <Square color="red"/>
            </div>);
  }
}

export default Grid
