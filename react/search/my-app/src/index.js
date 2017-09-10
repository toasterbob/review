import React from 'react';
import ReactDOM from 'react-dom';
// import './index.css';

class Autocomplete extends React.Component {

  constructor(props){
    super(props);
    this.state = {
      label: null,
      dataList: ["France", "Germany", "England"]
    };
  }

  // // on component loading
  // componentDidMount(){
  //   this.initAwesomplete();
  // }
  //
  // // Init awesomplete
  // initAwesomplete(){
  //   var input = document.getElementById("autocomplete");
  //   //use Awesomplete lib
  //   new Awesomplete(input, {
  //     list: this.state.dataList
  //   });
  // }

  // on input change function
  onChange(event){
    // Anytime the input change, the State change
    // Anytime the state change, the component will be rendered with the new label
    this.setState({
      label: event.target.value
    });
  }

  render(){
    return (
      <div>
        Here:
        <input
          value={this.state.label}
          className='form-control'

          onChange={this.onChange.bind(this)}
          />
      </div>
    );
  }
}

ReactDOM.render(
  <Autocomplete />,
  document.getElementById('root')
);
