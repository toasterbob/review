
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

//
