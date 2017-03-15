import React from 'react';
import Tile from './tile';

class Board extends React.Component {
  constructor(props){
    super(props);
  }

  render() {
    return(
      <div>
        <Tile />
      </div>
    );
  }
}

export default Board;
