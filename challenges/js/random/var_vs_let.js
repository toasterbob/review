


function foo1(){
  let arr1 = [];
  for(var i = 0; i < 3; i++){
    setTimeout(() => {console.log(i)}, 0);
  }
  return arr1;
}

function foo2(){
  let arr2 = [];
  for(let j = 0; j < 3; j++){
    setTimeout(() => console.log(j), 0);
  }
  return arr2;
}


console.log(foo1());
console.log(foo2());
