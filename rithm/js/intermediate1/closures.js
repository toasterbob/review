// Closures

//Use closure to create "private" variables
//Create a module using the module pattern
//Understand what the keyword arguments represents and how it can be used

// Closure is when a function is able to access variables from an outer
// function that has already returned.

//Thanks to JavaScript's inner workings, a function is able to remember
//variables defined in functions even if that function has returned.


function outer(a){
    return function inner(b){
        return a + b;
    };
}

outer(5); // this returns the inner function

// this calls the inner function right away
outer(5)(2); // 7

// we can store the inner function in a variable
var laterAdd = outer(10);

// we can now call that inner function
laterAdd(15); // 25
laterAdd(1); // 11
// but how was the inner function able to remember the parameter "a"
//defined in the outer function which already returned?
// The answer is through closure.

// Closures in the wild - private variables
// One of the more common ones is to create a "private variable," or a
// variable that can not be accessed directly (and overwritten).

function defineAge(){
    var age = 28;
    return function growUp(){
        return ++age;
    };
}

var ageOnce = defineAge();
ageOnce(); // 29
ageOnce(); // 30
// Our age variable is now protected and no one can gain access to it!
// In cases like this, we say that growUp (the inner function) has
// closure over the scope of defineAge.

function createInstructors(){
    var instructors = ["Elie", "Matt", "Tim"];
    return {
        showInstructors: function displayAllInstructors(){
            return instructors;
        },
        addInstructor: function addNewInstructor(instructor){
            instructors.push(instructor)
            return instructors;
        }
    }
}
var firstClass = createInstructors();
firstClass.addInstructor("Jennifer");
firstClass.showInstructors(); // ["Elie", "Matt", "Tim", "Jennifer"]

var secondClass = createInstructors();
secondClass.addInstructor("Ashley"); // ["Elie", "Matt", "Tim", "Ashley"]

// on one line

var instructors = createInstructors().showInstructors();
instructors; //["Elie", "Matt", "Tim"]

//IIFE - Immediately Invoked Functional Expressions

var instructorModule = (function createInstructors(){
    var instructors = ["Elie", "Matt", "Tim"];
    return {
        showInstructors: function displayAllInstructors(){
            return instructors;
        },
        addInstructor: function addNewInstructor(instructor){
            instructors.push(instructor)
            return instructors;
        }
    }
})();

//changed to anonymous functions - I guess they have names for the next example
var instructorModule = (function createInstructors(){
    var instructors = ["Elie", "Matt", "Tim"];
    return {
        showInstructors: function (){
            return instructors;
        },
        addInstructor: function (instructor){
            instructors.push(instructor)
            return instructors;
        }
    }
})();

//we have just created a small module
// which is a piece of code that is encapsulated and can be reused quite easily

// The pattern we just used to write our code is famously called the
// module pattern! It's a great way to wrap everything in an IIFE
// that contains private data that can not be accessed globally.

//We can even refactor this more so that our logic is not in the return statement
var instructorModuleRefactored = (function createInstructors(){
    var instructors = ["Elie", "Matt", "Tim"];
    function displayAllInstructors(){
        return instructors;
    }
    function addNewInstructor(instructor){
        instructors.push(instructor);
        return instructors;
    }
    return {
        showInstructors: displayAllInstructors,
        addInstructor: addNewInstructor
    }
})();

function counter(){
  var count = 0;
  return function(){
    return ++count;
  }
}
var c = counter();
c(); //1
c(); //2

var c2 = counter();
c2(); //1
c2(); //2



//
