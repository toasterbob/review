
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













//
