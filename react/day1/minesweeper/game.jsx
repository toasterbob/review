import React from 'react';
import * as Minesweeper from './minesweeper';

class Game extends React.Component {
  constructor(props){
    super(props);
    let board = new Minesweeper.Board(9, 10);
    this.state = { board };
  }

  render() {

    return(
      <div>
        "Hello World!!"

      </div>
    );
  }
}

export default Game;
