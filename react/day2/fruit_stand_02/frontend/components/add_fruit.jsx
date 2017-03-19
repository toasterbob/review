import React from 'react';

class AddFruit extends React.Component {
  constructor(props){
    super(props);
    this.state = {value: ""};
    this.handleChange = this.handleChange.bind(this);
    this.handleClick = this.handleClick.bind(this);
  }

  handleChange(e){
    this.setState({value: e.target.value});
  }

  handleClick(e){
    e.preventDefault();
    this.props.addFruit(this.state.value);
    this.setState({value: ""});
  }

  render() {
    return(
      <div>
        <input value = {this.state.value} onChange = {this.handleChange} placeholder="fruit..."></input>
        <button onClick={this.handleClick}>Submit</button>
      </div>
    );
  }
}

export default AddFruit;
