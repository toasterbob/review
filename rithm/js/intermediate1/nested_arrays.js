//Multidimensional Arrays

var myFirstSubarray = [['this','is'],['super','cool']];

//When working with two-dimensional arrays, if you want to print out all
//of the values, you are going to need a loop inside of a loop!

var nestedArr = [[1,2], [3,4]];
for(let i=0; i<nestedArr.length; i++){
    console.log(nestedArr[i]);
}

// this will log out...
// [1,2]
// [3,4]

var nestedArr = [[1,2], [3,4,5]];
for(let i=0; i<nestedArr.length; i++){
    for(let j=0; j<nestedArr[i].length; j++){
        // notice that we are going inside the outer array
        // and now inside of the inner array
        console.log(nestedArr[i][j]);
    }
}

// this will log out...
// 1
// 2
// 3
// 4

var nestedArr = [[1,2,3], [4,5,6], [7,8,9,10,11,12]];

for(let i = 0; i < nestedArr.length; i++){
  for(let j =0; j < nestedArr[i].length; j++){
    console.log(nestedArr[i][j]);
  }
}

//Exercises
var nestedArr = [[1,2,3], [4,5,6], [7,8,9,10,11,12]];

function printEvens(){
  for(let i = 0; i < nestedArr.length; i++){
    for(let j =0; j < nestedArr[i].length; j++){
      if(nestedArr[i][j] % 2 === 0){
        console.log(nestedArr[i][j]);
      }
    }
  }
}

printEvens();

var nestedArr = [[[1,2],[3,4]],[[5,6]]];
function sumTotal(){
  let sum = 0;
  for(let i = 0; i < nestedArr.length; i++){
    for(let j = 0; j < nestedArr[i].length; j++){
      for(let k = 0; k < nestedArr[i][j].length; k++){
        sum += nestedArr[i][j][k]
      }
    }
  }
  return sum;
}
sumTotal(); // 21


var arr = []
Array.isArray(arr) // true
Array.isArray('Hello') // false
//bonus
// I solved it recursively
function countVowels(input){
  let count = 0;

  function counter(str){
    for(let i = 0; i < str.length; i++){
      let c = str[i].toLowerCase();
      if(c === "a" || c === "e" || c === "i" || c === "o" || c === "u"){
        count++;
      }
    }
  }

  for(let i = 0; i < input.length; i++){
    if(Array.isArray(input[i])){
      count += countVowels(input[i]);
    } else {
      counter(input[i]);
    }
  }

  return count;
}
var nestedArr = ['Elie', ['Matt', ['Tim']],['Colt',['Whisky',['Janey'], 'Tom']], 'Lorien'];
countVowels(nestedArr);
//

//Nested Arrays Exercises

function rotate(arr, num){
  num = num % arr.length;
  for(let i = 0; i < num; i++){
    let val = arr.pop();
    arr.unshift(val);
  }
  return arr;
}
console.log(rotate([1,2,3], 1)); // [3,1,2]
console.log(rotate([1,2,3], 2)); // [2,3,1]
console.log(rotate([1,2,3], 3)); // [1,2,3]

//////////
function makeXOGrid(x, y){
  let result = [];
  let count = 0;
  for(let i = 0; i < x; i++){
     let row = [];
     for(let j = 0; j < y; j++){
       if(count % 2 === 0){
         row.push("X");
         count++;
       } else {
         row.push("O");
         count++;
       }
     }
     result.push(row);
  }
  return result;
}
console.log(makeXOGrid(1,4));

/*/
[["X","O","X","O"]]
/*/

console.log(makeXOGrid(3,2));

/*/
[["X","O"],["X","O"],["X","O"]]
/*/

console.log(makeXOGrid(3,3));
/*/
[["X","O","X"],["O","X","O"],["X","O","X"]]
/*/


///theirs
function makeXOGrid(rows,amount){
    var finalArr = []
    var startWithX = true
    for(var i=0; i<rows; i++){
        var newRow = []
        for(var j=0; j<amount; j++){
            if(startWithX){
                newRow.push("X")
            }
            else {
                newRow.push("O")
            }
            startWithX = !startWithX
        }
        finalArr.push(newRow)
    }
    return finalArr;
}
