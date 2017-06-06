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
