import React from 'react';

class WordInput extends React.Component {
  constructor() {
    super();
    this.state = {
      word: ''
    };
    this.linkState = this.linkState.bind(this);
  }

  linkState(e) {
    // here we use '[key]' to set the key to be the value of the 'key' variable,
    // as opposed to a string of 'key'
    this.setState({ word: event.currentTarget.value });
  }

  render () {
    return (
      <div>
        <input onChange={this.linkState} value={this.state.word}/>
        <span>The word is: {this.state.word}</span>
      </div>
    );
  }
}

export default WordInput;
