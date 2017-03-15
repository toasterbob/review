import React from 'react';
import * as Minesweeper from '../minesweeper';
import Board from './board';

class Game extends React.Component {
  constructor(props){
    super(props);
    let board = new Minesweeper.Board(9, 10);
    console.log(board);
    this.state = { board: board };
    this.updateGame = this.updateGame.bind(this);
  }

  updateGame() {

  }

  render() {

    return(
      <div>
        "Hello World!!"
        <Board board={this.state.board} updateGame={this.state.updateGame} />
      </div>
    );
  }
}

export default Game;
