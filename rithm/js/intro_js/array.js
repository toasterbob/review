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
