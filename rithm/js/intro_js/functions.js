//A function is a repeatable process or procedure.

function anyNameYouWantForTheFunction() {
    // As many lines of code as you want
}

// The function keyword,
// The name of the function (in this case, anyNameYouWantForTheFunction),
// Any parameters for the function (we'll ignore this for now, but parameters will go inside of the parentheses after the function name),
// The function body (the code for the function, which lives inside of the curly braces).

function myFunction() {

}

function myOtherFunction() {

}

function yetAnotherFunction() {

}

function okayIGetIt() {

}

function firstFunction() {
  console.log("I just wrote a function!");
}
firstFunction(); //I just wrote a function! - undefined

function firstFunction() {
  return "I just wrote a function!";
} //I just wrote a function! - no undefined

function isOverPointFive(){
    if(Math.random() > .5){
        return true;
    }
    return false;
}
//#refactor
function isOverPointFive(){
    return Math.random() > .5 ? true : false;
}
//#refactor
function isOverPointFive(){
    return Math.random() > .5;
}

function myName(){
  let name = "Mark Noizumi";
  console.log(name);
}
myName(); //Mark Noizumi

let favoriteFoods = ["pizza", "ice cream"];

function randomFood(favoriteFoods) {
  return Math.random() > .5 ? favoriteFoods[0] : favoriteFoods[1];
}
//Refactor
// lets find a random number between 0 and 1 and multiply it by the
// length of the array. This will give us a number between 0 and 2. If
// we always round down, we will get either 0 or 1, so we can use
// Math.floor to round down.
function randomFood(favoriteFoods) {
  let rand = Math.floor(Math.random() * favoriteFoods.length);
  return favoriteFoods[rand]; //doesn't see to be as random as above
}
randomFood(favoriteFoods);

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

function displayOddNumbers(numbers) {
  for(let i = 0; i < numbers.length; i++){
    if(numbers[i] % 2 === 1){
      console.log(numbers[i]);
    }
  }
}
displayOddNumbers(numbers);

function displayEvenNumbers(numbers) {
  for(let i = 0; i < numbers.length; i++){
    if(numbers[i] % 2 === 0){
      console.log(numbers[i]);
    }
  }
}
displayEvenNumbers(numbers);

function returnFirstHalf(numbers) {
  return numbers.slice(0, numbers.length/2);
}
returnFirstHalf(numbers); // [1, 2, 3, 4, 5]

function returnSecondHalf(numbers) {
  return numbers.slice(numbers.length/2, numbers.length);
  // return numbers.slice(numbers.length/2);
}
returnSecondHalf(numbers); // [6, 7, 8, 9, 10]

////////Function Parameters and Scope

//In JavaScript (before ES2015\), there are only 2 kinds of scope:
//global scope and function scope.
// In ES2015 we have block scope with let
var globalVariable = "I live in the global scope";

function makeNewScope(){
    var functionScopeVariable = "I live in the scope of the makeNewScope function";
}

globalVariable; // "I live in the global scope";
makeNewScope(); // maybe this will define the functionScopeVariable...

functionScopeVariable; // This gives us an error! To be specific, a
//ReferenceError because the functionScopeVariable is not defined.

// Since this variable declaration is in the global scope, it will
// be a global variable with or without the var keyword.  It is a best
// practice to always use the var keyword though.
globalVariable = "I live in the global scope";

function makeNewScope(){
    // You do not want to do this in practice.  You should
    // always defined your variables with the var keyword.
    functionScopeVariable = "What happens now?";
}

globalVariable; // "I live in the global scope"
makeNewScope(); // now this will define the functionScopeVariable!

// The value of the variable will be "What happens now?"
functionScopeVariable;


// If we omit the var keyword inside of a function, we actually declare
// that variable in the global scope. While this may seem like the way to
// go, this is not best practice. If we need to change some variable in a
// function, we should at least declare it in the global scope and assign
// it in a function so that our code is more readable.

function add (x, y){
  return x + y;
}

function subtract (x, y){
  return x - y;
}

function multiply (x, y){
  return x * y;
}

function divide (x, y){
  return x / y;
}
add(2,2); // 4
subtract(2,2); // 0
multiply(2,2); // 4
divide(2,2); // 1

function sayHello(name){
  if(name === "Mark"){
    return "Hello Boss";
  } else {
    return `Hello ${name}`;
  }
}
sayHello("BB8"); //"Hello BB8"
sayHello("Mark"); //"Hello Boss"

function average(arr){
  total = arr.reduce(function (accum, el){
    return accum + el
  }, 0)
  return total/arr.length
}
average([1,2,3,4,5]); // 3
average([1,2,3,4,5,6]); // 3.5
average([10,20]); // 15

function createStudent(first, last){
  return {firstName: first, lastName: last};
}
createStudent("Elie", "Schoppik"); //{firstName: "Elie", lastName: "Schoppik"}
createStudent("Tim", "Garcia"); //{firstName: "Tim", lastName: "Garcia"}

var tim = createStudent("Tim", "Garcia");
var matt = createStudent("Matt", "Lane");
var elie = createStudent("Elie", "Schoppik");

var students = [tim, matt, elie];
students[0]; // {firstName: "Tim", lastName: "Garcia"}












//
