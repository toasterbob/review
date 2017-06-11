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

// The arguments array

// we get access to a special keyword called arguments which looks like an
// array (it is not EXACTLY an array)

function logAll(){
    console.log(arguments);
}

logAll(2,2); // [2,2]
logAll(10,5,4); // [10,5,4]
logAll(1); // [1]

function displayFirstArgument(){
    return arguments[0];
}

displayFirstArgument(10,20); // [10]
displayFirstArgument(true); // [true]
displayFirstArgument(); // []

// So what do we mean when we say not "exactly" an array?
function tryPushOnArguments(){
    arguments.push("another one");
    return arguments;
}

tryPushOnArguments(); // Uncaught TypeError: arguments.push is not a function

// the arguments keyword looks like an array and even has a length
// property, it is actually not an array. It is a special kind of object.

// Manipulating this arguments array-like object can be useful, for
// instance, when you don't know how many arguments someone will pass in
// to your function

function add() {
    var total = 0;
    for (var i = 0; i < arguments.length; i++) {
        total += arguments[i];
    }
    return total;
}

add(1,2,3); // 6
add(1,-2,3,-4); // -2
add(); // 0

// Exercises
// What is a closure?
// Closure accesses variables from an outer function that has already returned
// in an inner function

// List two reasons why closures are useful
// creating private variables
// //variable cannot be accessed directly or overwritten

// What is a module?
// special type of closure that has a series of functions and variables
// encapsulated code, IIFE

//What is the arguments array-like object?
// can access individual arguments like an array (but not quite)

// Why do we call arguments an array-like-object?
// can't push to it 



//
