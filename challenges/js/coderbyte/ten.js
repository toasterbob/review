//https://coderbyte.com/algorithm/10-common-javascript-interview-questions

// Number 1
function integer_check(num){
  return num === Math.floor(num);
}


// Number 2

(function() {
  let a = b = 5; //a is in scope for the function.  b i guess assumes to be out of scope
})();

console.log(b); // b is 5, but a is not defined.
// But b is not declared anywhere in the function with var so it is set equal to 5 in the global scope.

// Number 3 - currying
function multiply(a){
  return function(b){
    return function(c){
      return a * b * c;
    };
  };
}

let d = multiply(5)(6);
d(2) //60

// Number 4 - bind

function fullName() {
  return "Hello, this is " + this.first + " " + this.last;
}

console.log(fullName()); // => Hello this is undefined undefined

// create a person object and pass its values to the fullName function
var person = {first: "Foo", last: "Bar"};
console.log(fullName.bind(person)()); // => Hello this is Foo Bar

//Number 5 -
//The "use strict" literal is entered at the top of a JavaScript program
//or at the top of a function and it helps you write safer JavaScript
//code by throwing an error if a global variable is created by mistake.
//For example, the following program will throw an error:

function doSomething(val) {
  "use strict";
  x = val + 10; // let x = val + 10;
}

//6. What is the difference between == and ===?

// The difference is that == performs implicit type conversion to check if
// values are equal to each other. So it will convert the values to true
// or false boolean values and then compare them. Below are some weird
// results of this implicit type conversion using the double equal
// operator:

"1" == 1 // true
true == 1 // true
[] == false // true
"" == false // true
undefined == null // true
