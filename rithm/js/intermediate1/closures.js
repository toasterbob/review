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







//
