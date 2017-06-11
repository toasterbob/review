// Higher Order Functions
//We call functions that accept functions as parameters "higher order functions."
//This is actually something special about JavaScript. Not all languages
//allow us to pass other functions as parameters to functions!

// sendMessage is a higher order function as it accepts a parameter called fn.
// How do we know fn is a function? We can see the fn parameter is being
// invoked with ()
function sendMessage(message, fn){
    return fn(message);
}

sendMessage("Hello World", console.log); // Hello World
sendMessage("Hello World", alert); // Hello World is alerted
sendMessage("What is your name?", prompt); // value from prompt is returned
sendMessage("Do you like JavaScript?", confirm); // true or false is returned

// It is important to remember the difference between referencing a function
// here, and invoking a function. In the following line of code,
// sendMessage("Hello World", console.log);, console.log is a function that
// is being referenced but not invoked.

//When you pass a function in to a higher order function, you must always
// pass in the function name, not an invocation of the function.

//Anonymous Functions As Parameters















//
