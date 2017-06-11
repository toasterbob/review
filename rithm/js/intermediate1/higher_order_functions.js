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





















//
