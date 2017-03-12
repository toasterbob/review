import React from 'react'

class WordInput extends React.Component {
  constructor() {
    super();
    this.state = {
      word: ''
    };
  }

  linkState(key) {
    // here we use '[key]' to set the key to be the value of the 'key' variable,
    // as opposed to a string of 'key'
    return (event => this.setState({[key]: event.currentTarget.value}));
  }

  render () {
    return (
      <div>
        <input onChange={this.linkState('word')} value={this.state.word}/>
        <span>The word is: {this.state.word}<span>
      </div>
    );
  }
});

export default WordInput;
