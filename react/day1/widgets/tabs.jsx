import React from 'react';
import ReactDOM from 'react-dom';
import Clock from './clock';
import Weather from './weather';
import Autocomplete from './autocomplete';

class Tabs extends React.Component {

  constructor(props) {
    super(props);
    this.state = { tab: 1, text: "I am the first", one: "selected", two: "tab", three: "tab" };
    this.tab1 = this.tab1.bind(this);
    this.tab2 = this.tab2.bind(this);
    this.tab3 = this.tab3.bind(this);
  }

  tab1() {
    this.setState({ tab: 1, text: "I am the first",  one: "selected", two: "tab", three: "tab"});
  }

  tab2() {
    this.setState({ tab: 2, text: "I am the second", one: "tab", two: "selected", three: "tab"});
  }

  tab3() {
    this.setState({ tab: 3, text: "I am the third", one: "tab", two: "tab", three: "selected" });
  }

  render() {

    return (
      <div className = "main">
      <div className = "layout">

        <div className = "clock_holder">
          <h1>Clock</h1>
          <Clock />
        </div>

        <div className = "weather_holder">
          <h1>Weather</h1>
          <Weather />
        </div>

        <div className = "two">
          <div>
            <h1>Tabs</h1>
            <div className = "tabs">
              <div className = "navbar">
                <div className = {this.state.one} onClick={this.tab1}>one</div>
                <div className = {this.state.two} onClick={this.tab2}>two</div>
                <div className = {this.state.three} onClick={this.tab3}>three</div>
              </div>
              <div className = "box"><br/><br/><br/>{this.state.text}</div>
            </div>
          </div>

          <div>
            <h1>Autocomplete</h1>
            <Autocomplete />
          </div>

        </div>


      </div>
      </div>
    );
  }


}

export default Tabs;
