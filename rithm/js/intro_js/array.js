//arrays aren't primitives; they're examples of what's called a reference type
typeof [1, 2, 3] // object

var arr = [1,2,3];
arr.unshift(0); // returns the new length, i.e. 4
arr; // [0,1,2,3]

//One (not common) way to remove elements is to manually set the length
//of the array to a number smaller than its current length.
var arr = [1,2,3];
arr.length = 2; // returns the new length
arr; // [1,2]

//shift(), unshift(), pop(), push()

var arr = [1,2,3];
arr.shift(); // returns 1
arr; // [2,3]

//When you use this keyword, the value at the index where you delete will
//simply be replaced by undefined.
var arr = [5, 4, 3, 2];
delete arr[1];
arr; // [5, undefined, 3, 2]

//splice
//The splice method accepts at least two arguments. The first argument is
//the starting index, indicating where values will be removed or added.
//The second parameter is the number of values to remove.
//The splice method always returns an array of the removed elements.
var arr = [1,2,3,4];
arr.splice(0,1); // returns [1]
arr; // [2,3,4]

var arr = [1,2,3,4];
arr.splice(0,1,5); // returns [1]
arr; // [5,2,3,4]

var arr = ["a","b","c","d"];
arr.splice(1,2,"x","y","z"); // ["b", "c"]
arr; // ["a", "x", "y", "z", "d"]

var arr = ["a","b","c","d"];
arr.splice(4,0,"x","y","z"); // []
arr; // ["a", "b", "c", "d", "x", "y", "z"]

var faveFoods = ["steak", "fries", "cheese", "popcorn", "pizza"];
faveFoods[1]; //fries
faveFoods[4] = "hamburgers";
faveFoods; //["steak", "fries", "cheese", "popcorn", "hamburgers"]
var formerFave = faveFoods.splice(0,1);
faveFoods.push("burritos");
faveFoods.unshift("filet mignon");
faveFoods;

[].pop(); //undefined

var arr = [2, 3, 4, 5];
arr.splice(1,1); //[3]
arr; //[2, 4, 5]

var arr2 = ["alpha", "gamma", "delta"];
arr2.splice(1, 0, "beta"); //[]
arr2; //["alpha", "beta", "gamma", "delta"]


var arr3 = [10,-10,-5,-3,2,1];
arr3.splice(0, 4, 10, 9, 8, 7, 6, 5, 4, 3); //[10, -10, -5, -3]
arr3; // [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]

//Array Methods

//length returns how many elements are in the array. This is a property, NOT a function

//slice makes a copy of an array. We can use it to copy the entire array,
// or create a copy of a subarray. If we just invoke slice() with no arguments, we'll create a copy:

var arr = [1,2,3,4];
var copy = arr.slice();
copy; // [1,2,3,4];

// The subarray you get will consist of all the values starting from
// the starting index and going up to (but not including) the ending index
var arr = [7, 6, 5, 4, 3, 2];
arr.slice(1, 2); // [6]
arr.slice(1, 1); // []
arr.slice(2, 5); // [5, 4, 3]
arr.slice(2, 1); // []

//concat joins two arrays together.
var arr1 = [1,2,3];
var arr2 = [4,5,6];
var combined = arr1.concat(arr2);
combined; // [1,2,3,4,5,6]
// you can pass in multiple arrays
var arr1 = ["a","b","c"];
var arr2 = ["d","e","f"];
var arr3 = ["g","h","i"];
var combined = arr1.concat(arr2,arr3);
combined; // ["a","b","c","d","e","f","g","h","i"];
//Any comma-separated list of values can be concatenated with the original array:
var openingWords = ["It","was","a"];
var moreOpeningWords = openingWords.concat("dark","and","stormy","night");
moreOpeningWords; // ["It", "was", "a", "dark", "and", "stormy", "night"]

// join - the argument is frequently referred to as a delimiter.
var arr = ["Hello", "World"];
arr.join(" "); // "Hello World"

var arr2 = ["I", "have", "a", "big", "announcement"];
arr2.join("! ") + "!"; // "I! have! a! big! announcement!"

// indexOf finds the first index of the element passed in (starting from
//   the left). If the element is not found, it returns -1.

var arr = [1,2,3,4,5,4,4];
arr.indexOf(2); // 1
arr.indexOf(3); // 2
arr.indexOf(1); // 0
arr.indexOf(4); // 3 - indexOf stops once it finds the first 4.
arr.indexOf(10); // -1

var moviesIKnow = [
    "Wayne's World",
    "The Matrix",
    "Anchorman",
    "Bridesmaids"
];

var yourFavoriteMovie = prompt("What's your favorite movie?");
if (moviesIKnow.indexOf(yourFavoriteMovie) > -1) {
    alert("Oh, cool, I've heard of " + yourFavoriteMovie + "!");
} else {
    alert("I haven't heard of " + yourFavoriteMovie + ". I'll check it out.");
}

// lastIndexOf works just like indexOf, but starts searching from the end
// of the array rather than the beginning.

var arr = [1,2,3,4,5,4,4];
arr.indexOf(4); // 3
arr.lastIndexOf(4); // 6 - this one is different now as it starts from the end!
arr.lastIndexOf(10); // -1 - still returns -1 if the value is not found in the array

//Reference vs Value
var instructor = "Elie";
var anotherInstructor = instructor;
anotherInstructor // "Elie";

// Let's assign a new value to anotherInstructor:
anotherInstructor = "Matt";

instructor; // "Elie"
anotherInstructor; // "Matt"

var instructors = ["Elie", "Matt"];
var instructorCopy = instructors;
instructorCopy.push("Tim");

instructorCopy; // ["Elie", "Matt", "Tim"]
instructors; // ["Elie", "Matt", "Tim"]

// This is because the instructorCopy did not create a new array, it just
// created a reference (or pointer) to the instructors array. In other
// words, unlike with our previous example, setting instructorCopy equal
// to instructors doesn't creat a copy of the instructors array in JavaScript.
// Instead, both variable names refer to the exact same array!
function f(a,b,c) {
   a = 3;
   b.push("foo");
   c.first = false;
}

var x = 4;
var y = ["eeny", "miny", "mo"];
var z = {first: true};
f(x,y,z);
x; //4
y; //["eeny", "miny", "mo", "foo"]
z; //{first: false}



// //////////////////////////////////////////////////////////////////////
//Exericses part 1
var arr = [];
arr.push("Mark");
arr.push("Noizumi");
arr.unshift("green");
arr; //["green", "Mark", "Noizumi"]
arr.shift(); //green
var arr2 = [];
arr2.push(25);
arr2.push("JavaScript");
arr2; //[25, "JavaScript"]
arr2.indexOf(42); // -1

var combinedArray = arr.concat(arr2);
combinedArray; //["Mark", "Noizumi", 25, "JavaScript"]

//Exercises part 2
var arr = ["JavaScript", "Python", "Ruby", "Java"];
arr.slice(1, 3); //["Python", "Ruby"]

arr.concat(["Haskell", "Clojure"]); ////["JavaScript", "Python", "Ruby", "Java", "Haskell", "Clojure"]
arr.join(" "); //"JavaScript Python Ruby Java"


// Array Iteration
var decimals = [1.1, 1.6, 2.8, 0.4, 3.5, 1.6];
var i = 0;

while(i < decimals.length) {
    decimals[i] = Math.round(decimals[i]);
    i++;
}
// The main difference between a while loop and a do...while loop is
// that the code inside of a do...while loop is guaranteed to execute at least once.
var i = 0;
do {
    console.log(i);
    i++;
} while(i < 5)

//##############
var i = 0;
while(i < 0) {
    console.log(i);
    i++;
}
// nothing is logged, since 0 < 0 is false

var j = 0;
do {
    console.log(j);
    j++;
} while(j < 0)
// 0 gets logged, since the code inside the block runs once
// before the while condition is checked

//break
for(var i = 0; i<5; i++){
    if(Math.random() > 0.5){
        console.log("Breaking out of the loop when i is " + i);
        break;
    }
    else {
        console.log(i);
    }
}
//continue

for(var i = 0; i<5; i++){
    if(Math.random() > 0.5){
        console.log("Skipping the console.log when i is " + i);
        continue;
    }
    console.log(i);
}

// However, unlike with arrays, you can't reassign the value of a character
// in a string. If you try, JavaScript will simply ignore you: (but it works in Ruby)

var name = "Matt";
name[0] = "m";
name; // "Matt", not "matt"!

// We say that arrays in JavaScript are mutable, since you can change any
// element inside of them via a simple reassignment. However, strings are
// immutable, as you cannot change the characters within them in the same
// way that you do with arrays. In fact, any operation which changes
// characters in a string actually produces a new string, rather than
// mutating the original string.

var arr = [];
var v2 = arr.push(2);
arr; // [2]
v2; // 1 - the length of the array is returned from push - in ruby you get the array


//ImmutableArray type
var arr = new ImmutableArray([1, 2, 3, 4]);
var v2 = arr.push(5);

arr.toArray(); // [1, 2, 3, 4]
v2.toArray();  // [1, 2, 3, 4, 5]

//ImmutableMap

var person = new ImmutableMap({name: "Chris", age: 32});
var olderPerson = person.set("age", 33);

person.toObject(); // {name: "Chris", age: 32}
olderPerson.toObject(); // {name: "Chris", age: 33}var person = new ImmutableMap({name: "Chris", age: 32});
var olderPerson = person.set("age", 33);

person.toObject(); // {name: "Chris", age: 32}
olderPerson.toObject(); // {name: "Chris", age: 33}

////////////////////////////////////////////////////////////////////////////////////////////
//Exercises
var people = ["Greg", "Mary", "Devon", "James"];

for(let i = 0; i < people.length; i++){
  console.log(people[i]);
}

people.shift();
people.pop();
people.unshift("Matt");
people.push("Mark");

for(let i = 0; i < people.length; i++){
  console.log(people[i]);
  if (people[i] === "Mary"){
    break
  }
}

var copy = people.slice(2,4);
// var copy = people.slice(2); //same

people.indexOf("Mary");
people.indexOf("Foo"); //-1

var people = ["Greg", "Mary", "Devon", "James"];
people.splice(2, 1, "Elizabeth", "Artie");
people; // ["Greg", "Mary", "Elizabeth", "Artie", "James"]
var withBob = people.concat("Bob"); //["Greg", "Mary", "Elizabeth", "Artie", "James", "Bob"]

//Part 2

function multipleLetterCount(str){
  let counts = {};
  for(let i = 0; i < str.length; i++){
    if(counts[str[i]]){
      counts[str[i]]++;
    } else {
      counts[str[i]] = 1;
    }
  }
  return counts;
}
multipleLetterCount("hello"); // {h:1, e: 1, l: 2, o:1}
multipleLetterCount("person"); // {p:1, e: 1, r: 1, s:1, o:1, n:1}

//answer version
function multipleLetterCount(str){
  var finalObj = {};
  for(var i =0; i< str.length; i++){
    if (!(str[i] in finalObj)){
      finalObj[str[i]] = 1;
    } else {
      finalObj[str[i]]++;
    }
  }
  return finalObj;
}















//
