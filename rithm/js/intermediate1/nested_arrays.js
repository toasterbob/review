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





//
