
//All errors in JavaScript are actually objects that are created by a
//function called Error

//you can also create and throw your own errors in applications that
//you write (this is what is meant by a "user-defined exception").

var 8 = 9; //SyntaxError: Unexpected number
var 8; //SyntaxError: Unexpected number


//Common JavaScript Errors
//SyntaxError - occurs when we make a mistake with our syntax:
var x = "hello";

var wrongObj = {
    name: "foo"
    missingComma: true
}; //Uncaught SyntaxError: Unexpected identifier

//ReferenceError - occurs when we try to access a variable that does not exist in that scope.
amazing; // ReferenceError - does not exist in the global scope

function defineSomething(){
    var secret = "I'll never tell";
}

defineSomething();

secret; // ReferenceError - only exists in the scope of the defineSomething function

// TypeError - occurs when you make incorrect use of certain types in javascript.
undefined(); // TypeError - undefined is NOT a function!

var obj = {
    name: "Elie"
};

obj.something; // this actually returns undefined! What does that tell us? If you try to access a property on an object and it does not exist, you do NOT get a ReferenceError, you just get undefined

obj.something.foo; // but when you try to access a property on `undefined`... well, that's a TypeError.

obj.something(); //this is a TypeError for the same reason that undefined() is, since obj.something is undefined!

// RangeError - occurs when we have a function that calls itself (also
// known as a recursive function). If we have too many functions that
// have been called (before they are returned) we run out of memory and
// cause a RangeError.

function callMe(){
    callMe();
}

callMe(); // maximum call stack size exceeded. We will talk more about
// the call stack and recursion in a later section.

//Catching and Throwing Errors in JavaScript

//try / catch statement.
// We place code inside of the try block (a block is defined as code inside
// of a {}) and if an error is thrown, the code moves to the catch block.
// After the catch block, code continues to execute.

try {
    thisDoesNotExist;
} catch(e) {
    console.log("The error is ", e);
}
//The error is  ReferenceError: thisDoesNotExist is not defined at <anonymous>:2:5

// sometimes want to throw an error
// To return an error and stop code execution, we use the throw keyword
// followed by an error object. Optionally, we can add a message string to
// the error to give more details about what went wrong.
throw ReferenceError("That variable does not exist!");

throw "This will also be an error"; //Uncaught This will also be an error

try {
  if(Math.random() >= .5){
    throw "Let's make an error!";
  }
  console.log("Whew... we made it.");
  console.log("We can only get her if the random number is less than .5");
} catch(e) {
  console.log(`The error is ${e}`);
  console.log("We can only get here if an error is thrown.")
}
console.log("Moving on...");

// In our try/catch statements, we can add one more special keyword called
// finally. Inside of the finally block, code will execute regardless of an
// error being thrown.

try {
  if(Math.random() >= .5){
    undefined(); //Uncaught TypeError: undefined is not a function(…)
  }
  console.log("Whew...we made it!")
} catch(e){
  console.log(`We didn't make it. The error is ${e}`);
} finally {
  console.log("No matter what, we will see this statement. And we're gonna make it!");
}

try {
    // let's randomly try to throw an error
    if(Math.random() >= .5){
        // The following code will throw:
        // Uncaught TypeError: undefined is not a function(…)
        undefined();
    }
    console.log("Whew, we made it");
} catch(e){
   console.log("We didn't make it. The error message is", e.message);
} finally {
   console.log("No matter what we will see this statement");
}

//sources tab
//command return - runs program
//command \ - steps through it
//highlight a line or insert "debugger"
var instructor = "Elie";

if(instructor === "Elie"){
    console.log("Yes!");
}

function information(){
    var first = 1;
    var second = 2;
    var third = 3;
}

information();

for(var i = 0; i < 5; i++){
    debugger
    if(i % 2 === 0){
        console.log("i is even");
    }
}

//Debugging Exercises
//What does the throw keyword do?
throw "The throw keyword throws this error"; //Uncaught The throw keyword throws this error

//What does the finally keyword do?
try {
  throw "Purposeful error";
} catch(e) {
  console.log(e);
}finally {
  console.log("This runs even though there is an error!")
}

//What is the difference between a TypeError and ReferenceError?
// TypeErrors occur when JavaScript is unable to perform a certain operation
// on a data type (invoking something that is not a function, accessing
// properties on something that is not an object). ReferenceErrors occur
// when JavaScript does not have a reference to the variable in memory
// (accessing a variable that is not defined or not in the current or
// outer scope)

//How do you create a snippet in the Chrome dev toos?
//Go into the sources tab.  Click new snippet.  Write it.  Save it.  Run it.

//In the Chrome dev tools, on the right hand side of the sources tab,
// there is a "pause" button which allows you to "pause on caught exceptions."
// What is an exception?
// An exception is an error that occurs in your program. Caught
//exceptions are errors that are evaluated in a try/catch block

//How do we "catch" errors in JavaScript? Give an example with code
//for what that might look like.
//use try/catch block
try {
  undefined();
} catch(e) {
  console.log("Here is your error: ", e);
}

//Explain what type of error will be thrown, why the error is occuring, and how to fix it:
// #1
person; //Reference error
var person //fixes it

//#2
var data = {};
data.displayInfo(); //Type error - displayInfo is undefined


//#3
var data = {};
data.displayInfo.foo = "bar"; //Type error.  can't set property foo on undefined
//TypeError: Cannot set property 'foo' of undefined

//#4
function data(){
    var thing = "foo";
}
data();
thing; //reference error
//ReferenceError: thing is not defined


//
