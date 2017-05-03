function SimpleAdding(num) {

  let sum = 0;
  for(let i = 1; i <= num; i++){
      sum += i;
  }
  return sum;

}

function SimpleAdding2(num) {

  let sum = 0;

  for(let i = 1; i <= num; i++) sum += i;

  return sum;

}

//recursive

function SimpleAdding(num) {

  if(num === 1){
      return 1;
  } else {
      return num + SimpleAdding(num - 1);
  }


}
