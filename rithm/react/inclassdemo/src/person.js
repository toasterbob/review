import React, {Component} from 'react';

class Person extends Component {
  render(){
    const {hobbies,onDelete,img} = this.props
    return (<div>
              <img src={img} />
              <ul>
                {hobbies.map((h,i) => (
                  <li key={i}>
                    {h} -
                    <button type="button" onClick={() => onDelete(h)}>DELETE</button>
                  </li>
                ))}
              </ul>
            </div>);
  }
}

export default Person
