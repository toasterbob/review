import React from 'react';
import Rows from './rows';

class Board extends React.Component {
  constructor(props){
    super(props);
  }

  render() {
    let board = this.props.board.grid.map((tiles, idx) => {
      return (
        <div key={idx}> <Rows tiles={tiles} updateGame={this.props.updateGame}/> </div>
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
