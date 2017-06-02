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
// let is block scoped

// ++ is called a postfix or prefix operator
number = 0;
number++;
//0
number;
//1
++number;
//2
