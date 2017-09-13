import React, {Component} from 'react';

class Person extends Component {
  render(){
    return (<div>
              <img src={this.props.img} />
              <ul>
                {this.props.hobbies.map((h,i) => (
                  <li key={i}>{h}</li>
                ))}
              </ul>
            </div>);
  }
}

export default Person
