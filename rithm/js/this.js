// The keyword 'this'

// 4 differenct ways the keyword this is set
// 1. default
// generally evaluates to the window if in the console.

// 2. implicit
// 3. explicit
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
