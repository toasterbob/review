import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import Person from './person';
import Picture from './picture';

class App extends Component {
  constructor(props){
    super(props);
    this.state = {
      hobbies: ["snowboarding", "coding"]
    }
    setTimeout(() => {
      const hobbies = [...this.state.hobbies, "hiking"];
      this.setState({hobbies})
    }, 5000)
  }

  render() {
    return (
      <div className="App">
        <div className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <h2>Welcome to React</h2>
        </div>
        <p className="App-intro">
          To get started, edit <code>src/App.js</code> and save to reload.
        </p>
        <Person
          img="https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAhuAAAAJGZlMzc0MzQwLTY1ZjktNGVmNy1hOWYzLWIzMWE1MDFjZDRiZg.jpg"
          hobbies={this.state.hobbies}
          />
        <Picture />
      </div>
    );
  }
}

export default App;
