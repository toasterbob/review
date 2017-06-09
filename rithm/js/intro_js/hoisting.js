// Because variable declarations (and declarations in general) are
// processed before any code is executed, declaring a variable anywhere
// in the code is equivalent to declaring it at the top. This also means
// that a variable can appear to be used before it's declared. This
// behavior is called "hoisting", as it appears that the variable
// declaration is moved to the top of the function or global code.

instructor; // this will NOT throw an error!
console.log(instructor);
var instructor = "Elie";
