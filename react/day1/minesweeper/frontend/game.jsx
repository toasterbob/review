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
    console.log("clicked");
  }

  render() {

    return(
      <div className="holder">
      <div className="game">
        <h2>Minesweeper</h2>
        <p>Click to explore a tile.
          <br/>
          Alt + click to flag a tile.</p>

        <Board board={this.state.board} updateGame={this.updateGame} />
      </div>
      </div>
    );
  }
}

export default Game;
