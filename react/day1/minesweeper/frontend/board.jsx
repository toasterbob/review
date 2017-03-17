import React from 'react';
import Tiles from './tiles';

class Board extends React.Component {
  constructor(props){
    super(props);
  }

  render() {
    let board = this.props.board.grid.map((tiles, idx) => {
      return (
        <div key={idx}> <Tiles tiles={tiles} updateGame={this.props.updateGame}/> </div>
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
