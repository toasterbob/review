import React from 'react';

const Currency = ({name, rate, amount}) => {
  let color = "green";
  if(rate < 1) {
    color = "red";
  }

  return (
    <div className={color}>
      {name}
      &nbsp;
      {rate * amount}
    </div>
  );
};

export default Currency;
