//https://coderbyte.com/algorithm/10-common-javascript-interview-questions

// Number 1
function integer_check(num){
  return num === Math.floor(num);
}

function integer_chec2k(num){
  return num % 1 === 0;
}
// Number 2

(function() {
  let a = b = 5; //a is in scope for the function.  b i guess assumes to be out of scope
})();

console.log(b); // b is 5, but a is not defined.
// But b is not declared anywhere in the function with var so it is set equal to 5 in the global scope.

// Number 3 - currying
function multiply(a){
  return function(b){
    return function(c){
      return a * b * c;
    };
  };
}

let d = multiply(5)(6);
d(2) //60

// Number 4 - bind

function fullName() {
  return "Hello, this is " + this.first + " " + this.last;
}

console.log(fullName()); // => Hello this is undefined undefined

// create a person object and pass its values to the fullName function
var person = {first: "Foo", last: "Bar"};
console.log(fullName.bind(person)()); // => Hello this is Foo Bar

//Number 5 -
//The "use strict" literal is entered at the top of a JavaScript program
//or at the top of a function and it helps you write safer JavaScript
//code by throwing an error if a global variable is created by mistake.
//For example, the following program will throw an error:

function doSomething(val) {
  "use strict";
  x = val + 10; // let x = val + 10;
}

//6. What is the difference between == and ===?

// The difference is that == performs implicit type conversion to check if
// values are equal to each other. So it will convert the values to true
// or false boolean values and then compare them. Below are some weird
// results of this implicit type conversion using the double equal
// operator:

"1" == 1 // true
true == 1 // true
[] == false // true
"" == false // true
undefined == null // true

"1" === 1 // false
true === 1 // false
[] === false // false
"" === false // false
undefined === null // false

// 7
Array.prototype.average = function(){
  let total = 0;
  this.forEach(num => {
    total += num;
  })
  return total/this.length;
}

var arr = [1, 2, 3, 4, 5];
var avg = arr.average();
console.log(avg);

// 8
// A callback function is a function that is passed to another function
// as an argument and is executed after some operation has been completed.
// Below is an example of a simple callback function that logs to the
// console after some operations have been completed.
function modifyArray(arr, callback) {
  // do something to arr here
  arr.push(100);
  // then execute the callback function that was passed
  callback();
}

var arr = [1, 2, 3, 4, 5];

modifyArray(arr, function() {
  console.log("array has been modified", arr);
});

//9
a = 0.1 + 0.2 //0.30000000000000004

0.1 + 0.2 === 0.3 // false
// This will surprisingly output false because of floating point errors
// in internally representing certain numbers. 0.1 + 0.2 does not nicely
// come out to 0.3 but instead the result is actually 0.30000000000000004
// because the computer cannot internally represent the correct number.
// One solution to get around this problem is to round the results when
// doing arithmetic with decimal numbers.

//10
function func() {
  var priv = "secret code";
}

console.log(priv); // throws error

function func() {
  var priv = "secret code";
  return function() {
    return priv;
  }
}

var getPriv = func();
console.log(getPriv()); // => secret code


// closure

function weird(){
  let my_hash = []
  return function (input){
    if(my_hash[input]){
      my_hash[input]++;
    } else {
      my_hash[input] = 1;
    }
    return my_hash[input];
  }
}

let crazy = weird();
crazy("a");


// closure 2
function celebrityID () {
    var celebrityID = 999;
    // We are returning an object with some inner functions​
    // All the inner functions have access to the outer function's variables​
    return {
        getID: function ()  {
            // This inner function will return the UPDATED celebrityID variable​
            // It will return the current value of celebrityID, even after the changeTheID function changes it​
          return celebrityID;
        },
        setID: function (theNewID)  {
            // This inner function will change the outer function's variable anytime​
            celebrityID = theNewID;
        }
    }
​
}
​
​var mjID = celebrityID (); // At this juncture, the celebrityID outer function has returned.​
mjID.getID(); // 999​
mjID.setID(567); // Changes the outer function's variable​
mjID.getID(); // 567: It returns the updated celebrityId variable 

//closures 3
​function celebrityIDCreator (theCelebrities) {
    var i;
    var uniqueID = 100;
    for (i = 0; i < theCelebrities.length; i++) {
      theCelebrities[i]["id"] = function ()  {
        return uniqueID + i;
      }
    }

    return theCelebrities;
}
​
​var actionCelebs = [{name:"Stallone", id:0}, {name:"Cruise", id:0}, {name:"Willis", id:0}];
​
​var createIdForActionCelebs = celebrityIDCreator (actionCelebs);
​
​var stalloneID = createIdForActionCelebs [0];  console.log(stalloneID.id()); // 103

/////////////////////

function celebrityIDCreator (theCelebrities) {
    var i;
    var uniqueID = 100;
    for (i = 0; i < theCelebrities.length; i++) {
        theCelebrities[i]["id"] = function (j)  { // the j parametric variable is the i passed in on invocation of this IIFE​
            return function () {
                return uniqueID + j; // each iteration of the for loop passes the current value of i into this IIFE and it saves the correct value to the array​
            } () // BY adding () at the end of this function, we are executing it immediately and returning just the value of uniqueID + j, instead of returning a function.​
        } (i); // immediately invoke the function passing the i variable as a parameter​
    }
​
    return theCelebrities;
}
​
​var actionCelebs = [{name:"Stallone", id:0}, {name:"Cruise", id:0}, {name:"Willis", id:0}];
​
​var createIdForActionCelebs = celebrityIDCreator (actionCelebs);
​
​var stalloneID = createIdForActionCelebs [0];
 console.log(stalloneID.id); // 100​
​
​var cruiseID = createIdForActionCelebs [1]; console.log(cruiseID.id); // 101
