
function countDown(x){
  let timerId = setInterval(function(){
      if(x <= 0){
        clearInterval(timerId);
        console.log("DONE!");
      } else {
        console.log(x);
      }
      x--;
  },1000);
}

countDown(4);
// 3
// 2
// 1
// "DONE!"

////////////////////////////////////////////////////////////////////////

function randomGame(){
  let count = 0;
  let timeId = setInterval(function (){
    if(Math.random() > .75){
      clearInterval(timeId);
      console.log(`Your score is ${count}`);
    } else {
      console.log(++count);
    }
  }, 1000);
}

////////////////////////////////////////////////////////////////////////

function isEven(num){
  return num % 2 === 0
}

console.log(isEven(2)); // true
console.log(isEven(3)); // false

function isOdd(num){
  return num % 2 === 1
}
console.log(isOdd(3)); // true
console.log(isOdd(14)); // false
////////////////////////////////////////////////////////////////////////

function isPrime(num){
  if(num < 2){
    return false;
  } else if(num === 2){
    return true;
  } else {
    for(let i = num - 1; i >= 2; i--){
      if(num % i === 0){
        return false;
      }
    }
  }
  return true;
}

isPrime(8); // false
isPrime(17); // true

//theirs
function isPrime(value) {
    for(var i = 2; i <= Math.sqrt(value); i++) {
        if(value % i === 0) {
            return false;
        }
    }
    return value > 1;
}

////////////////////////////////////////////////////////////////////////
function numberFact(num, fn){
  return fn(num);
}

numberFact(59,isEven); // false
numberFact(59,isOdd); // true
numberFact(59,isPrime); // true

////////////////////////////////////////////////////////////////////////
function findIndex(arr, fn){
  for(let i = 0; i < arr.length; i++){
    if(fn(arr[i])){
      return i
    }
  }
}
// returns 1 (index of the first value greater than or equal to 10)
findIndex([8,11,4,27], function(val){return val >= 10});

findIndex([8,11,4,27], function(val){return val === 7}); // undefined


////////////////////////////////////////////////////////////////////////

function find(arr, fn){
  for(let i = 0; i < arr.length; i++){
    if(fn(arr[i])){
      return arr[i]
    }
  }
}
find([8,11,4,27], function(val){return val >= 10}); // 11
find([8,11,4,27], function(val){return val === 5}); // undefined
//
function specialMultiply(num){
  let answer = 1;
  if (arguments.length > 1){
    for(let i = 0; i < arguments.length; i++){
      answer *= arguments[i];
    }
    return answer;
  } else {
    return function(num2){
      return num * num2;
    };
  }
}

specialMultiply(3,4); // 12
specialMultiply(3)(4); // 12
specialMultiply(3); // returns a function

specialMultiply(3,4,5); // 60 - mine works with this, theirs does not 

//theirs
function specialMultiply(a,b){
  if(arguments.length === 1){
    return function(b){
      return a*b;
    }
  }
  return a*b;
}


//
