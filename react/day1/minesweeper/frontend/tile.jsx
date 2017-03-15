import React from 'react';

class Tile extends React.Component {
  constructor(props){
    super(props);

  }

  render(){
    let tiles = this.props.tiles.map((tile, idx) => {
      return (
        <div className="tile" key={idx}>{tile.adjacentBombCount()} </div>
      );
    });
    return(
      <div className="row">{tiles}</div>
    );
  }
}

export default Tile;
