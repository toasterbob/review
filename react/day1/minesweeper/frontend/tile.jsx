import React from 'react';

class Tile extends React.Component {
  constructor(props){
    super(props);
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(){
    console.log("clicked");
    this.props.updateGame;
  }

  render(){
    let tiles = this.props.tiles.map((tile, idx) => {
      let value = tile.bombed ? "b" : tile.adjacentBombCount();
      return (
        <div className="tile" key={idx} onClick={this.handleClick}><div className="value">{value}</div> </div>
      );
    });
    return(
      <div className="row">{tiles}</div>
    );
  }
}

export default Tile;
