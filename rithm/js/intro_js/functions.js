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











//
