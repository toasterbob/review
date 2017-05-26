// hoisting

console.log(thing);
var thing = "nice";

function sayHi(){
  return elie;
  var elie = "Instructor"; // hoists elie to the top but it's undefined

}

sayHi();


var firstFunction = function(){
  return "HI!";
};
firstFunction();


sayHello(); // returns "HELLO"

function sayHello(){
  return "HELLO!";
}
 // function declarations always hoist

 sayHello2(); //sayHello2 is not a function

 var sayHello2 = function(){
   return "Hello!";
 };
// sayHello hoists but it is undefined so it can't be invoked
// gives error

// es6 const and let
// const does not mean immutability - no redeclaration - but variable can change
const numbers = [1, 2, 3, 4];
numbers.push(100);
numbers;

numbers.length = 0; // [] - but don't do this hack, bad programming

// let gives us block scope {}

for(var i = 0; i < 5; i++){
  (function(j){
    setTimeout(function(){
      console.log(j)
    }, 0)
  })(i)  // passing the variable at the time into it
}

let instructor = "elie";
instructor = "bob";
let instructor = "elie"; //error
