import React from 'react';
import ReactDOM from 'react-dom';

class Tabs extends React.Component {

  constructor(props) {
    super(props); 
    this.state = { tab: 1, text: "I am the first" };
    this.tab1 = this.tab1.bind(this);
    this.tab2 = this.tab2.bind(this);
    this.tab3 = this.tab3.bind(this);
  }

  tab1() {
    this.setState({ tab: 1, text: "I am the first" });
  }

  tab2() {
    this.setState({ tab: 2, text: "I am the second" });
  }

  tab3() {
    this.setState({ tab: 3, text: "I am the third" });
  }

  render() {
    return (
      <div className = "layout">

        <div className = "clock">
          <h1>Clock</h1>
        </div>

        <div className = "weather">
          <h1>Weather</h1>
        </div>

        <div className = "two">
          <div>
            <h1>Tabs</h1>
            <div className = "tabs">
              <div className = "navbar">
                <div className = "tab" onClick={this.tab1}>one</div>
                <div className = "tab" onClick={this.tab2}>two</div>
                <div className = "tab" onClick={this.tab3}>three</div>
              </div>
              <div className = "box"><br/><br/><br/><br/>{this.state.text}</div>
            </div>
          </div>

          <div>
            <h1>Autocomplete</h1>
          </div>

        </div>


      </div>
    );
  }


}

export default Tabs;
