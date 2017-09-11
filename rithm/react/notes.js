// https://docs.google.com/presentation/d/1gxpZ07j0m7cxJARJpKocu-bVQx5vPO9fWmU62_wcbfM/edit#slide=id.g1fdeb5d75d_0_8

// Important concepts
//
// - Let and Const

let person = "Mark"

// constructor function is new to JS - classes are just syntactic sugar for
// functions put on prototypes

// all the components you create are inheriting from React.Component

//arrow functions
function multiply(a,b) {
  return a * b;
}

let multiply2 = (a,b) => a * b; //implicit return

let multiply3 = (a,b) => {
  return a * b;
}

// object.assign and destructuring
// object.assign merges objects from right to left
Object.assign({},
  {firstName: "Tim", lastName: "Schoppik"},
  {lastName: "Garcia"});

// firstName: "Tim", lastName: "Garcia"}
names = Object.assign({},
  {firstName: "Tim", lastName: "Schoppik"},
  {lastName: "Garcia"});

var newObj = {
  ...names,
  favoriteFood: 'pizza'
}

// {firstName: "Tim", lastName: "Garcia", favoriteFood: "pizza"}
var {firstName, lastName} = newObj
firstName // "Tim"
lastName // "Garcia"


let upperCaseFirstLetter = word => `${word[0].toUpperCase()}${word.slice(1)}`;

// let upperCaseWords = sentence => {
//   var words = sentence.split(" ");
//   for(let i = 0; i < words.length; i++){
//     words[i] = upperCaseFirstLetter(words[i])
//   }
//   return words

var upperCaseWords = s => s.split(" ").map(upperCaseFirstLetter).join(" ");

console.log(upperCaseWords("code example to refactor"));
// Code Example To Refactor

// Functional Programming - pure functions

var myObj = {id: 53};
function addName(obj, name){
  return Object.assign({}, obj, {name}) //{name: name}
}
var res = addName(myObj, "Tim")











//
