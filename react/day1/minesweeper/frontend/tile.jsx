import React from 'react';

class Tile extends React.Component {
  constructor(props){
    super(props);
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(){

  }

  render(){
    let tiles = this.props.tiles.map((tile, idx) => {
      let value = tile.bombed ? "b" : tile.adjacentBombCount();
      return (
        <div className="tile" key={idx}><div className="value">{value}</div> </div>
      );
    });
    return(
      <div className="row">{tiles}</div>
    );
  }
}

export default Tile;
