import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import Person from './person';
import Picture from './picture';
import Grid from './grid';

class App extends Component {
  constructor(props){
    super(props);
    this.state = {
      hobbies: ["snowboarding", "coding", "cheese tasting", "winning"]
    }

    this.deleteHobby = this.deleteHobby.bind(this);
  }

  deleteHobby(hobbyName){
    const hobbies = this.state.hobbies.filter(h => h !== hobbyName)
    this.setState({hobbies})
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
          onDelete={this.deleteHobby}
          />
        <Picture />
        <br />
        <Grid />
      </div>
    );
  }
}

export default App;
