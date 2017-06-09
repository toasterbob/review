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









//
