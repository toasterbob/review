// Because variable declarations (and declarations in general) are
// processed before any code is executed, declaring a variable anywhere
// in the code is equivalent to declaring it at the top. This also means
// that a variable can appear to be used before it's declared. This
// behavior is called "hoisting", as it appears that the variable
// declaration is moved to the top of the function or global code.

instructor; // this will NOT throw an error!
console.log(instructor); //undefined
var instructor = "Elie";
// What is happening under the hood is that all the variables you declare
// in your code are created in memory before your code gets run. Therefore
// in the following example, instructor will be created in memory and will
// be undefined until the assignment statement.
var instructor;
instructor; // this will NOT throw an error!
instructor = "Elie";

function displayInstructor(){
    return instructor; //undefined - but not an error
    var instructor = "Elie";
}

//Hoisting In Function Declarations vs Function Expressions

// Function declarations are fully defined before the code is run. So in
// the following example, we can call the sayHi function above the lines
// that define the sayHi function:

sayHi("Matt"); // "Hello Matt"

function sayHi(name){
    return "Hello " + name;
}


//However, function expressions act differently.
sayHi("Matt"); // Throws an error!

var sayHi = function(name){
    return "Hello " + name;
};
//essentially this happens:

var sayHi;
sayHi("Matt"); // Throws an error because undefined is not a function (we are using the type of undefined and trying to invoke it - that's why we get a TypeError)

sayHi = function(name){
    return "Hello " + name;
}

//////////////////////////////////////////////////////////////
//what will be returned?
var myName = "Tim";

function returnMyName() {
    console.log(myName);
    var myName = "Matt";
}

returnMyName(); //undefined - myName is hoisted in the function
// What is actually happening is that the myName variable from the
// returnMyName function is getting logged. It is hoisted to the top of
// the function and created as soon as the function executes. Since
// nothing has been assigned to myName until later in the program, myName
// starts out undefined

//What does happen is that variable and function declarations are put
// into memory during the compile phase, but stays exactly where you typed it in your coding.

// One of the advantages you get from JavaScript putting function
// declarations into the memory before it executes any code segment, is
// this allows you to use a function before you declare it in your code.
// For example:
function catName(name) {
  console.log("My cat's name is " + name);
}

catName("Tigger");

//or

catName("Chloe"); //function declared first

function catName(name) {
  console.log("My cat's name is " + name);
}
var x = 1; // Initialize x
console.log(x + " " + y);  //y is undefined
var y = 2;
//the above code and the below code are the same

var x = 1; // Initialize x
var y; // Declare y
console.log(x + " " + y);  //y is undefined
y = 2; // Initialize y

//Exercises
//1
var firstName = 'Elie';

function displayFirstName(){
    var firstName = 'Tim';
    return firstName;
}

displayFirstName(); Tim

//2
function displayFirstName(){
    var firstName = 'Tim';
    return firstName;
}

displayFirstName();

console.log(firstName) // ReferenceError

//3
console.log(firstName) // undefined
var firstName = "Elie"

//4
console.log(firstName) // Reference error
firstName = 'Elie'
// since variables that do not use the var keyword are NOT hoisted,
//this will return a ReferenceError - firstName is not defined.

//5
function sayHi(){
    return 'Hi ' + firstName;
    var firstName = 'Elie'
}

sayHi(); // Hi undefined

//6
function sayHi(){
    return 'Hi ' + firstName;
    firstName = 'Elie'
}

sayHi(); // ReferenceError

//7
sayHi() // Hi!

function sayHi(){
    return 'Hi!';
}
//function declarations are hoisted

//8
sayHi() // error sayHi(undefined) not a function

var sayHi = function(){
    return 'Hi!';
}
//hoists the variable but the variable isn't declared as a function

// TypeError: sayHi is not a function. Since we are using the var
//keyword, the declaration of the variable get's hoisted, but not its
//definition



//
