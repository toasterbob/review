import React from 'react';
import ReactDOM from 'react-dom';
// import './index.css';

class Autocomplete extends React.Component {

  constructor(props){
    super(props);
    this.state = {
      label: null,
      values: ["France", "Germany", "England"],
      results: null
    };
    this.onChange = this.onChange.bind(this)
    this.resultsRender = this.resultsRender.bind(this)
  }

  onChange(event){
    // the state updates when the input changes 
    this.setState({
      label: event.target.value
    });
  }

  resultsRender(){
    let results = this.state.values
    if (results){
      return this.state.values.map((term) => (
                <option value={term} />
              ));
    }
  }

  render(){

    return (
      <div>
        Here:
        <input
          value={this.state.label}
          list='languages'
          className='form-control'

          onChange={this.onChange}
          />
          <datalist id="languages">
            <option value="HTML" />
            <option value="CSS" />
            <option value="JavaScript" />
            <option value="Java" />
            <option value="Ruby" />
            <option value="PHP" />
            <option value="Go" />
            <option value="Erlang" />
            <option value="Python" />
            <option value="C" />
            <option value="C#" />
            <option value="C++" />
            {this.resultsRender()}
          </datalist>
      </div>
    );
  }
}

ReactDOM.render(
  <Autocomplete />,
  document.getElementById('root')
);
