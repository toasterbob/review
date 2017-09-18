import React, {Component} from 'react';
import Square from './square';

class Grid extends Component {
  constructor(props){
    super(props);
    var boxes = [];
    let boxCount = 1008
    for(let i=0; i < boxCount; i++){
      let color = this.getRandomColor();
      boxes.push({
        id: i,
        color: color
      });
    }
    this.state = { boxes:boxes }



    setInterval(() => {
      const newBoxes = this.state.boxes.slice();
      const randomTimes = Math.floor(Math.random() * 30)

      const randomBox = Math.floor(Math.random() * newBoxes.length)
      newBoxes[randomBox] = Object.assign({}, newBoxes[randomBox], {color: this.getRandomColor()})
      const randomBox2 = Math.floor(Math.random() * newBoxes.length)
      newBoxes[randomBox2] = Object.assign({}, newBoxes[randomBox2], {color: this.getRandomColor()})


      this.setState({
        boxes: newBoxes
      })
    }, 1)
  }


  getRandomColor(){
    let allColors = ["AliceBlue","AntiqueWhite","Aqua","Aquamarine","Azure","Beige","Bisque","Black","BlanchedAlmond",
    "Blue","BlueViolet","Brown","BurlyWood","CadetBlue","Chartreuse","Chocolate",
    "Coral","CornflowerBlue","Cornsilk","Crimson","Cyan","DarkBlue","DarkCyan","DarkGoldenRod",
    "DarkGray","DarkGrey","DarkGreen","DarkKhaki","DarkMagenta","DarkOliveGreen","Darkorange",
    "DarkOrchid","DarkRed","DarkSalmon","DarkSeaGreen","DarkSlateBlue","DarkSlateGray","DarkSlateGrey",
    "DarkTurquoise","DarkViolet","DeepPink","DeepSkyBlue","DimGray","DimGrey","DodgerBlue",
    "FireBrick","FloralWhite","ForestGreen","Fuchsia","Gainsboro","GhostWhite","Gold","GoldenRod",
    "Gray","Grey","Green","GreenYellow","HoneyDew","HotPink","IndianRed","Indigo","Ivory","Khaki",
    "Lavender","LavenderBlush","LawnGreen","LemonChiffon","LightBlue","LightCoral","LightCyan",
    "LightGoldenRodYellow","LightGray","LightGrey","LightGreen","LightPink","LightSalmon",
    "LightSeaGreen","LightSkyBlue","LightSlateGray","LightSlateGrey","LightSteelBlue","LightYellow",
    "Lime","LimeGreen","Linen","Magenta","Maroon","MediumAquaMarine","MediumBlue","MediumOrchid",
    "MediumPurple","MediumSeaGreen","MediumSlateBlue","MediumSpringGreen","MediumTurquoise",
    "MediumVioletRed","MidnightBlue","MintCream","MistyRose","Moccasin","NavajoWhite","Navy",
    "OldLace","Olive","OliveDrab","Orange","OrangeRed","Orchid","PaleGoldenRod","PaleGreen",
    "PaleTurquoise","PaleVioletRed","PapayaWhip","PeachPuff","Peru","Pink","Plum","PowderBlue",
    "Purple","Red","RosyBrown","RoyalBlue","SaddleBrown","Salmon","SandyBrown","SeaGreen",
    "SeaShell","Sienna","Silver","SkyBlue","SlateBlue","SlateGray","SlateGrey","Snow","SpringGreen",
    "SteelBlue","Tan","Teal","Thistle","Tomato","Turquoise","Violet","Wheat","White","WhiteSmoke",
    "Yellow","YellowGreen"]

    let colorIndex = Math.floor(Math.random() * allColors.length);
    return allColors[colorIndex];
  }

  render(){
    const boxes = this.state.boxes.map(b =>
      <Square key={b.id} color={b.color} />
    )
    return (<div>
              {boxes}
            </div>);
  }
}

export default Grid
