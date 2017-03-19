import React from 'react';
import AddFruit from './add_fruit';

const FruitStand = ({fruits, addApple, addOrange, addFruit, clearFruit}) => (
  <div>
    <ul>
      {fruits.map((fruit, idx) => <li key={idx}>{fruit}</li>)}
    </ul>

    <button onClick={addApple}>Apple</button>
    <button onClick={addOrange}>Orange</button>
    <AddFruit addFruit={addFruit}/>
    <br/>
    <button onClick={clearFruit}>Clear</button>
  </div>
);

export default FruitStand;
