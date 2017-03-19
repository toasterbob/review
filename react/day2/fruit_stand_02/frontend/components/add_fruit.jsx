import React from 'react';

class AddFruit extends React.Component {
  constructor(props){
    super(props);
    this.state = {value: ""};
    this.handleChange = this.handleChange.bind(this);
  }

  handleChange(e){
    this.setState({value: e.target.value});
  }

  render() {
    return(
      <div>
        <input value = {this.state.value} onChange = {this.handleChange} placeholder="fruit..."></input>
      </div>
    );
  }
}

export default AddFruit;
