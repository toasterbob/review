import React from 'react';

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    this.state = { result: 0, num1: "", num2: ""};

    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.add = this.add.bind(this);
    this.subtract = this.subtract.bind(this);
    this.multiply = this.multiply.bind(this);
    this.divide = this.divide.bind(this);
    this.clear = this.clear.bind(this);
  }

  setNum1(e) {
    const num1 =  e.target.value ? parseInt(e.target.value) : "";
    this.setState({ num1 });
    // console.log(this.state.num1);
  }

  setNum2(e) {
    const num2 = e.target.value ? parseInt(e.target.value) : "";
    // console.log(this.state.num2);
    this.setState({ num2 });
  }

  add() {
    const result = this.state.num1 + this.state.num2;
    this.setState({ result });
  }

  subtract() {
    const result = this.state.num1 - this.state.num2;
    this.setState({ result });
  }

  multiply() {
    const result = this.state.num1 * this.state.num2;
    this.setState({ result });
  }

  divide() {
    const result = this.state.num1 / this.state.num2;
    this.setState({ result });
  }

  clear() {
    this.setState({ result: 0, num1: "", num2: ""});
  }


  render() {
    const { num1, num2 } = this.state;
    return (
      <div>
        <h1>{this.state.result}</h1>

        <input onChange={this.setNum1} value={num1}/>
        <input onChange={this.setNum2} value={num2}/>
        <br />
        <button onClick={this.add}>+</button>
        <button onClick={this.subtract}>-</button>
        <button onClick={this.multiply}>*</button>
        <button onClick={this.divide}>/</button>
        <button onClick={this.clear}>Clear</button>
      </div>
    );
  }
}

export default Calculator;
