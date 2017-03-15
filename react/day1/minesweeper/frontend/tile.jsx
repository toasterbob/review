import React from 'react';

class Tile extends React.Component {
  constructor(props){
    super(props);

  }

  render(){
    let tiles = this.props.tiles.map((tile, idx) => {
      return (
        <p> {tile} </p>
      );
    });
    return(
      {tiles}
    );
  }
}

export default Tile;
