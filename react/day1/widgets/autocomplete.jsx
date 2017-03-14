import React from 'react';

class Autocomplete extends React.Component {
  constructor(props){
    super(props);
    this.state = { value: ""};

    this.handleChange = this.handleChange.bind(this);
    this.selectName = this.selectName.bind(this);
  }

  handleChange(event){
    this.setState({ value: event.target.value});
  }

  selectName(event){
    this.setState({ value: event.currentTarget.innerText});
    console.log(this.state.value);
  }

  render() {
    let names = this.props.names.map((name, idx) => {
      return(
        <li key={idx} onClick={this.selectName}>{name}</li>
      );
    });
    return (
      <div className="autocomplete">
        <input value = {this.state.value} onChange = {this.handleChange} placeholder="search..."></input>
        <ul>
          {names}
        </ul>
      </div>
    );
  }

}

export default Autocomplete;
