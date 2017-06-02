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
