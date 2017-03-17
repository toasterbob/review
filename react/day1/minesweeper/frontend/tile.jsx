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
    let value = tile.bombed ? '\u2622' : tile.adjacentBombCount();
    value = value === 0 ? "" : value;
    let theClassName = "tile";
    let displayValue = "hidden";
    if (tile.explored) {
      theClassName = "revealed";
      displayValue = "revealed2";
    } else if (tile.flagged) {
      theClassName = "tile";
      value = '\u2691';
      displayValue = "revealed2";
    }
    return(
      <div className={theClassName} onClick={this.handleClick}><div className={displayValue}>{value}</div> </div>
    );
  }
}

export default Tile;
