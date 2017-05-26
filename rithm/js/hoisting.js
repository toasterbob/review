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
}
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
