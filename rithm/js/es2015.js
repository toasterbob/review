// without the var keyword the variable is local
// var hoists the variable to the top of the scope - but var is undefined
function sayHi(){
  return elie;
  var elie = "That is me";
}

sayHi();
//undefined

//es6 gives us let and const

const person = "Elie";

const person = "Matt"; //syntax error

const numbers = [1, 2, 3, 4];
numbers.push(100);

numbers;
//(5) [1, 2, 3, 4, 100]

// primatives = numbers, undefined, null, booleans, symbol, string

// can't redeclare the same variable with let twice
// but you can with var
// let is block scoped - if for while switch do throw catch finally else else if

// ++ is called a postfix or prefix operator
number = 0;
number++;
//0
number;
//1
++number;
//2

var instructor = "Elie";

if(instructor === "Elie"){
  let fact = true;
}
fact; // reference error  - not undefined

for(var i = 0; i < 5; i++){
  setTimeout(function(){
    console.log(i);
  }, 1000);

} // prints 5, 5 times

for(var i = 0; i < 5; i++){
  setTimeout(function(){
    console.log(i);
  }, 0);

} // prints 5, 5 times

for(let i = 0; i < 5; i++){
  setTimeout(function(){
    console.log(i);
  }, 0);

} // prints 0, 1, 2, 3, 4


for(var i = 0; i < 5; i++){
  setTimeout(function(){
    console.log(i);
  }, 0);

}
// calling the function with a closure
for(let i = 0; i < 5; i++){
  // closure because it makes use of inner variables
  (function(correctNumber){
    setTimeout(function(){
      console.log(i);
    }, 0);

  })(i);

}


const a = function outer(){
  var elie = "ME!"
  var tim = "NOT ME!"
  return function inner(){
    console.log(`This is ${elie}`)
  }

}


function add(a=12, b=10){
  return a + b
}

add() //22
add(2) //12
add(undefined, 2)// 14
