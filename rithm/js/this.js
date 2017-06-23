// The keyword 'this'

// 4 differenct ways the keyword this is set
// 1. default
// generally evaluates to the window if in the console.

// 2. implicit
// 3. explicit - call, apply, bind 
// 4. new


function whatIsThis(){
    return this;
}
undefined
this //Window {stop: function, open: function, alert: function, confirm: function, prompt: function…}

whatIsThis(); //Window {stop: function, open: function, alert: function, confirm: function, prompt: function…}

// in strict mode the value of this is undefined

var person = {
  name: "Matt",
  sayHi: function() {
    return person.name + " says hi!";
  }
}
person.sayHi(); //"Matt says hi!"

var person = {
  name: "Matt",
  sayHi: function() {
    return this.name + " says hi!"; // this is implicitly set
  }
}
person.sayHi(); //"Matt says hi!"

window.name // ""
// window.name is always coerced into a string

var person = {
  name: "Matt",
  sayHi: function() { return this.name + " says hi!";},
  dog: {
    name: "Whiskey",
    bark: function(){ return this.name + " says woof!";}
  }
};
person.sayHi(); //"Matt says hi!"
person.dog.bark(); //"Whiskey says woof!"
var anotherBark = person.dog.bark
anotherBark(); // " says woof!"

anotherBark  // function (){ return this.name + " says woof!";}
// look where function is being invoked to see where the value of this

person.sayHiLater = function(){
  setTimeout(function(){
    console.log(this.name + " says hi!");
  }, 1000);
};

person.sayHiLater()  // says hi!

var school = {
  name: "Rithm",
  makeAd: function(buzzword){
    return function(adjective){
      return "You should come to" + this.name + "because it's " + adjective + "! You will learn about " + buzzword;
    }
  }
}
school.makeAd("the keyword this")("confusing"); //"You should come tobecause it's confusing! You will learn about the keyword this"

// arrow functions have lexical binding
var school = {
  name: "Rithm",
  makeAd: function(buzzword){
    return (adjective) => {
      return "You should come to " + this.name + " because it's " + adjective + "! You will learn about " + buzzword;
    }
  }
}
school.makeAd("the keyword this")("confusing"); // works

var person = {
  name: "Matt",
  sayHi: function() {
    return this.name + " says hi!";
  },
  dog: {
    name: "Whiskey",
    bark: function(){
      return this.name + " says woof!";

    }
  }
};
person.dog.bark.call(person); //"Matt says woof!"
//explicit value takes precedence over implicit binding

person.dog.bark.apply(person); // "Matt says woof!"
person.dog.bark.bind(person)(); //"Matt says woof!"

whatIsThis.call(person)
whatIsThis.apply(person.dog)
whatIsThis.call(213)

// apply always takes at most two arguments (thisArg, [])
// call rather than passing in an array (call can take unlimited args)

person.dog.bark = function(numWoofs) {
  return this.name + " says " + " woof ".repeat.numWoofs.trim() + "!"
}

person.dog.favoriteFoods = function(food1, food2, food3){
  return `${this.name} loves tot eat ${food1}, ${food2}, and ${food3}`
}
person.dog.favoriteFoods("chicken", "popcorn", "steak")
//"Whiskey loves tot eat chicken, popcorn, and steak"

person.dog.favoriteFoods.call({name: "Bruno Mars"}, "chicken", "popcorn", "steak")
//"Bruno Mars loves tot eat chicken, popcorn, and steak"

person.dog.favoriteFoods.apply({name: "Bruno Mars"}, ["chicken", "popcorn", "steak"])
"Bruno Mars loves tot eat chicken, popcorn, and steak"

person.dog.favoriteFoods.bind({name: "Bruno Mars"}, ["chicken", "popcorn", "steak"])
// function (food1, food2, food3){
//   return `${this.name} loves tot eat ${food1}, ${food2}, and ${food3}`
// }
// bind returns a new function with the context bound to the new this

var onlySomeFoods = person.dog.favoriteFoods.bind({name: "Bruno Mars"}, "chicken", "popcorn")
onlySomeFoods("steak") //"Bruno Mars loves tot eat chicken, popcorn, and steak"

function addThree(a, b, c){
  return a + b + c;
}

var addTwo = addThree.bind(null, 3, 2)
addTwo(4) // 9

//constructor functions - by convention they start with capital letter - but
// js doesn't care - other coders do

function Person(firstName, lastName) {
  this.firstName = firstName;
  this.lastName = lastName;
}

var matt = Person("Matt", "Lane")
matt //undefined
matt.firstName

// using new keyword
var matt = new Person("Matt", "Lane")
matt //{firstName: "Matt", lastName: "Lane"}

// invoking with new - object is created - keyword this points to newly
// created empty object - implicit return this  - prototype link

function foo () {}
f = new foo(); // {}

Person.prototype.sayHi = function() {
  return `${this.firstName} says hi!`;
};

// Book - you don't know JS

//ES6

class Person {
  constructor(firstName, lastName){
    this.firstName = firstName;
    this.lastName = lastName;
  }

  sayHi(){
    return `${this.firstName} says hi!`;
  }
}
matt.__proto__;
matt.__proto__ .__proto__;








//
