// block scope in es6

function outer() {
  return function(){
    return "Hello Class";
  };
}

var callYouLater = outer();

console.log(callYouLater());

// closure - inner functions that make use of variables defined in outer functions when those functions
// have returned

function outer() {
  var secret = "it sure is";
  return function inner(){
    return "Javascript is fun...." + secret;
  };
}

outer()(); // "Javascript is fun....it sure is"

function outer() {
  var instructor = "Elie";
  var favoriteInstructor = "Tim";
  return function inner(){
    debugger;
    return favoriteInstructor; // only favoriteInstructor is accessible
  };
}

// closures are good for maintaining state

// hoisting: let vs var, block scope

// problem with global scope.  people can modify variables in global scope

function counter(){
  var count = 0;
  return function(){
    count++;
    return count;
  };
}
var c = counter();
var c2 = counter(); // two different counters

//////////////////////////////////////////////////
function classRoom(){
  var instructors = ["Tim", "Matt", "Elie"];
  // return an object that contains two functions
  return {
    getInstructors: function(){
      return instructors;
    },
    addInstructor: function(string){
      instructors.push(string);
      return instructors;
    }
  };
}

// module pattern
var module = function classRoom(){
  var instructors = ["Tim", "Matt", "Elie"];
  // return an object that contains two functions
  return {
    getInstructors: function(){
      return instructors;
    },
    addInstructor: function(string){
      instructors.push(string);
      return instructors;
    }
  };
}() // immediately invoke it
// i can put module in the global scope and no one can mess with it

$ = jQuery = function(){

}; // how jQuery is created - assigned to char

var rithmModule = function classRoom(){
  var instructors = ["Tim", "Matt", "Elie"];

  function getInstructors(){
    return instructors;
  }

  function addInstructor(string){
    instructors.push(string);
    return instructors;
  }

  // return an object that contains two functions
  return {
    getInstructors: getInstructors,
    addInstructor: addInstructor
  };
}()// revealing module pattern
