import React from 'react';
import * as Minesweeper from '../minesweeper';
import Board from './board';

class Game extends React.Component {
  constructor(props){
    super(props);
    let board = new Minesweeper.Board(9, 10);
    this.state = { board: board };
    this.updateGame = this.updateGame.bind(this);
    this.restartGame = this.restartGame.bind(this);
  }

  updateGame(tile, flagged) {
    if(flagged){
      tile.toggleFlag();
    } else {
      tile.explore();
    }
    this.setState({ board: this.state.board });
  }

  restartGame(){
    let board = new Minesweeper.Board(9, 10);
    this.setState({ board: board });
  }

  render() {
    let modal;
    if (this.state.board.lost() || this.state.board.won()){
      let text;
      if (this.state.board.lost()){
        text = "You lost!";
      } else if (this.state.board.won()){
        text = "You win!";
      }

      modal = <div onClick={this.restartGame}>{text}</div>;
    }
    return(
      <div className="holder">
      <div className="game">
        <h2>Minesweeper</h2>
        <p>Click to explore a tile.
          <br/>
          Alt + click to flag a tile.</p>
        {modal}
        <Board board={this.state.board} updateGame={this.updateGame} />
      </div>
      </div>
    );
  }
}

export default Game;
