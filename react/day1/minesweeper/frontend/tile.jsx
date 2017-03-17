import React from 'react';

class Tile extends React.Component {
  constructor(props){
    super(props);
    this.handleClick = this.handleClick.bind(this);
    this.state = { class: "tile", value: "hidden" };
  }

  handleClick(e){
    const flagged = e.altKey ? true : false;
    this.props.updateGame(this.props.tile, flagged);
    if (flagged) {
      this.setState({ value: flagged });
    } else {
      this.setState({ class: "revealed", value: "revealed2"});
    }
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
      theClassName = "flagged";
    }
    return(
      <div className={theClassName} onClick={this.handleClick}><div className={displayValue}>{value}</div> </div>
    );
  }
}

export default Tile;
