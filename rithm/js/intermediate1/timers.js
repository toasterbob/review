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

//Asynchronous code








//
