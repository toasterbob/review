import React from 'react';
import Tile from './tile';

class Board extends React.Component {
  constructor(props){
    super(props);
  }

  render() {
    let board = this.props.board.map((tile, idx) => {
      return (
        <div key={idx}> <Tile tile={tile}/> </div>
      );
    });
    return(
      <div>
        {board}
      </div>
    );
  }
}

export default Board;
