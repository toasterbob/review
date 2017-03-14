import React from 'react';

class Autocomplete extends React.Component {
  constructor(props){
    super(props);

  }

  render() {
    let names = this.props.names.map((name) => {
      return(
        <li>{name}</li>
      );
    });
    return (
      <div className="autocomplete">
        Hello
        <ul>
          {names}
        </ul>
      </div>
    );
  }

}

export default Autocomplete;
