import React from 'react';
import AddFruit from './add_fruit';

const FruitStand = ({fruits, addApple, addOrange, addFruit, clearFruit}) => (
  <div>
    <ul>
      {fruits.map((fruit, idx) => <li key={idx}>{fruit}</li>)}
    </ul>

    <button onClick={addApple}>Add Apple</button>
    <button onClick={addOrange}>Add Orange</button>
    <br/><br/>
    <AddFruit addFruit={addFruit}/>
    <br/>
    <button onClick={clearFruit}>Clear All</button>
  </div>
);

export default FruitStand;
