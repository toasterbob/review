//setTimeout and setInterval
//synchronous vs. asynchronous code
//Diagram the call stack, heap, and queue, and explain how the event loop works


//setTimeout and setInterval
// It's quite common to write code that we want to be executed after a
// specific amount of time. Maybe you want to put a timer in a game, or
// perform some animation on the page after a fixed amount of time has elapsed.

// To do this, we use the setTimeout and setInterval functions. Both
// functions accept a callback function and a time in milliseconds as
// parameters. The main difference is that the setTimeout function will
// only run the callback function to be executed once, whereas setInterval
// will run it an infinite amount of times (until the timer is cleared).

setTimeout(function(){
    console.log("Hello!");
},1000);

//This will log out Hello! after one second.
// The second parameter to setTimeout controls how many milliseconds
// JavaScript should wait before executing the callback function.


//clearTimeout or clearInterval
// What happens if we want to stop the timer? Well, setTimeout and
// setInterval return a special value called a timer id. If we pass this
// value in to the clearTimeout or clearInterval method, we can stop our timer!

var timerId = setTimeout(function(){
    console.log("Hello!");
},1000);

clearTimeout(timerId); //clears before "Hello" is console logged

////////////////////////////////////////////////////////////////////////
var timerId = setInterval(function(){
    console.log("HI!");
},1000); //runs three times

setTimeout(function(){
   clearTimeout(timerId);
},3000); //then the interval is cleared

////////////////////////////////////////////////////////////////////////
var timerId = setInterval(function(){
    console.log("HI!");
},1000); //runs three times

setTimeout(function(){
   clearInterval(timerId); //works the same as above
},3000); //then the interval is cleared

////////////////////////////////////////////////////////////////////////

// Asynchronous code

// Another reason why callbacks are such a powerful tool is that they
// enable us to manage asynchronous code, or code that will be executed at
// a later point in time.

// JavaScript: it is single threaded.
// What this means is that only one process will happen at a time.
// This is unlike other languages where you can create your own threads,
// a process called multi-threading

// However, we can write asynchronous code, which may give the impression
// that multiple things are happening at once, even though this is not the case.


// call stack - where function calls are put (each one is called a
// "stack frame"). The call stack (sometimes simply referred to as the
// stack) is a LIFO (last-in-first-out) data structure.

//i f there is a function on the stack and it is under another function,
// it can never execute until the function on top has come off the stack

// event queue - When an asynchronous event occurs, it gets put into what
// is called the "event queue" (also known as the queue). It is then moved
// to the stack when the stack is clear (i.e. when there are no functions on the stack).

//heap - where objects are stored. The heap is an unstructured/unorganized region of memory.

//"Event Loop"
// JavaScript internally has something called the "Event Loop", which
// checks the queue and sees if there are any processes to execute.

//Let's examine the event loop in action:
console.log("first");
setTimeout(function(){
    console.log("second");
},0);
console.log("third"); //"first", "third", "second."

// Exercises

//What is the difference between setInterval and setTimeout?
//setInterval repeats - setTimeout is one time

// What is the difference between using setInterval and a loop? Why would
// you want to choose one over the other?
// setinterval repeats a function at a set amount of time.  loop just repeats.

//What is the first parameter that setInterval and setTimeout accept?
// they accept a function and then a time in milliseconds

// Why is it so important to store the result of setInterval and setTimeout in a variable?
// In order to clear them later on

// What does asynchronous mean in the context of setTimeout and setInterval?
// they are put into the queue then they are called when the stack is cleared 


//
