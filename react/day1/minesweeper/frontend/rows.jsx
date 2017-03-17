import React from 'react';
import Tile from './tile';

class Rows extends React.Component {
  constructor(props){
    super(props);
    this.handleClick = this.handleClick.bind(this);

  }

  handleClick(e){
    const flagged = e.altKey ? true : false;
    this.props.updateGame(this.props.tiles, flagged);
  }

  render(){
    let tiles = this.props.tiles.map((tile, idx) => {
      return (
        <div key={idx} ><Tile tile={tile} updateGame={this.props.updateGame}/></div>
      );
    });
    return(
      <div className="row">{tiles}</div>
    );
  }
}

export default Rows;
