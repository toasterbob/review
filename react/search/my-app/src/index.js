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
    let searchBar;
    if (this.state.values){
      searchBar = <div>Search:&nbsp;
                    <input value={this.state.label} list='languages' className='form-control'onChange={this.onChange} />
                      <datalist id="languages">{this.resultsRender()}</datalist>
                  </div>
    } else{
      searchBar = <div>Search:&nbsp;
                    <input value={this.state.label} className='form-control'onChange={this.onChange} />
                  </div>
    }

    return (
      <div>
        {searchBar}
      </div>
    );
  }
}

ReactDOM.render(
  <Autocomplete />,
  document.getElementById('root')
);
