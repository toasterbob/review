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


// arrow functions - get rid of the function key word
var add = function(a,b){
  return a + b
}
// fat arrow
var add = (a, b) => {
  return a + b
}

var add = (a,b) => a + b // no curly braces

var add = (a, b) => (
  a + b
);

var arr = [1, 2, 3, 4, 5];
arr.map(val => val * 2).filter(val => val > 5); // [6, 8, 10]

// any time a function is run arguments, and this are invoked
// when you use arrows you do not get an arguments keyword
//  ...rest - use this instead
// arrow functions do not get their own keyword this , always the immediate
// parent to where it is found

var obj = {
  firstName: "Elie",
  info: () => {
    return this; // parent this
  }
};

var obj = {
  firstName: "Elie",
  sayHi: function(){
    console.log("the keyword before setTimeout is", this)
    setTimeout(function(){
      console.log("the keyword inside setTimeout is", this)
      console.log(`Hi, my name is ${this.firstName}`) // Hi, my name is undefined
    }, 1000)
  }
};

obj.sayHi()
//the keyword before setTimeout is Object {firstName: "Elie", sayHi: function}
//the keyword inside setTimeout is Window {stop: function, open: function, alert: function, confirm: function, prompt: function…}
// Hi, my name is undefined

var obj = {
  firstName: "Elie",
  sayHi: function(){
    console.log("the keyword before setTimeout is", this)
    setTimeout(() => { // arrow takes parent's this
      console.log("the keyword inside setTimeout is", this)
      console.log(`Hi, my name is ${this.firstName}`) // Hi, my name is undefined
    }, 1000)
  }
};
obj.sayHi()

var obj = {
  firstName: "Elie",
  sayHi: function(){
    setTimeout(function(){ // arrow takes parent's this
      console.log(`Hi, my name is ${this.firstName}`) // Hi, my name is undefined
    }.bind(this), 1000)
  }
};
obj.sayHi()

// destructuring - unpacking data from objects

var instructor = {
  first: "Elie",
  last: "Schoppik",
  numSiblings: 3
}
var first = instructor.first;
var last = instructor.last;
var numSiblings = instructor.numSiblings;

var {first, last, numSiblings} = instructor

var instructor = {
  fact: {
    moreFacts: {
      homeTown: "west orgnage",
      state: "NJ"
    }
  }
}

var {state} = instructor.fact.moreFactsvar
var {state:taco} = instructor.fact.moreFacts

var numbers = [1, 2, 3, 4, 5]
var [one, two , three, four, five] = numbers;

var obj = {first: 'Elie', last: 'Schoppik'}

function returnFullName({first, last}){
  return `${first} ${last}`
}
returnFullName(obj)

// object shorthand notation first: first can just be first
var student = "Mark"
var obj = {
  student //instead of student: student 
}
obj.student //"Mark"

var first = "Elie"
var obj = {}
obj[first] = "that is me"
