import React from 'react';

class Tile extends React.Component {
  constructor(props){
    super(props);
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(e){
    const flagged = e.altKey ? true : false;
    this.props.updateGame(this.props.tile, flagged);
  }

  render(){
    let tile = this.props.tile;
    let value = tile.bombed ? "b" : tile.adjacentBombCount();
    return(
      <div onClick={this.handleClick}><div className="value">{value}</div> </div>
    );
  }
}

export default Tile; 
