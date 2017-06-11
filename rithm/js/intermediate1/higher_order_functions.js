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

sendMessage("Hello World", function(message){
    // message refers to the string "Hello World"
    console.log(message + " from a callback function!");
});  // Hello World from a callback function!

//The previous example is equivalent to doing the following:

var myFunction = function(message){
    // message refers to the string "Hello World"
    console.log(message + " from a callback function!");
};

sendMessage("Hello World", myFunction);

// In our previous examples we would have had to do a lot of work to get
// the same code. Higher order functions allow us to avoid writing seperate functions like this

function sendMessageWithConsoleLog(message){
    return console.log(message);
}

function sendMessageWithAlert(message){
    return alert(message);
}

function promptWithMessage(message){
    return prompt(message);
}

function confirmWithMessage(message){
    return confirm(message);
}

function sendMessageWithFromCallback(message){
    return console.log(message + " from a callback function!");
}

// /////////////////////////// /////////////////////////// /////////////////////////

//We call a function that is passed as an argument to a higher order function a callback
// In our sendMessage example, sendMessage is the higher order function and fn is the callback function.

function add(a,b){
    return a+b;
}

function subtract(a,b){
    return a-b;
}

function math(a,b,callback){
    return callback(a,b);
}

math(1,4,add); // returns 5
math(5,5,subtract); // returns 0

//practice

function each(arr, func){
  for(let i = 0; i < arr.length; i++){
    func(arr[i]);
  }
}
each([1,2,3,4], function(val){
    console.log(val);
});

// Here is what should be output if you wrote the function correctly

// 1
// 2
// 3
// 4

each([1,2,3,4], function(val){
    console.log(val*2);
});

// Here is what should be output if you wrote the function correctly

// 2
// 4
// 6
// 8

//Exercises







//
