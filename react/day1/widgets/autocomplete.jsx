import React from 'react';
import ReactCSSTransitionGroup from 'react-addons-css-transition-group';

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
  }

  getNames(){
    let newList = [];
    if (this.state.value.length === 0) {
      return this.props.names;
    }

    this.props.names.forEach(name => {
      let subword = name.slice(0, this.state.value.length);
      // console.log(subword);
      // console.log(this.state.value);
      if (subword.toLowerCase() === this.state.value.toLowerCase()){
        newList.push(name);
      }
    });

    if (newList.length === 0){
      newList.push("Sorry, no matches!");
    }

    return newList;
  }

  render() {
    let names = this.getNames().map((name, idx) => {
      return(
        <li key={idx} onClick={this.selectName}>{name}</li>
      );
    });
    return (
      <div className="autocomplete">
        <input value = {this.state.value} onChange = {this.handleChange} placeholder="search..."></input>
        <ul>
          <ReactCSSTransitionGroup
            transitionName='auto'
            transitionEnterTimeout={1000}
            transitionLeaveTimeout={1000}>
          {names}
        </ReactCSSTransitionGroup>
        </ul>
      </div>
    );
  }

}

export default Autocomplete;
