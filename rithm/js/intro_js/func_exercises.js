//Part I
function difference(x, y){
  return x - y;
}
difference(2,2); // 0
difference(0,2); // -2

function product(x, y){
  return x * y;
}
console.log(product(2,2)); // 4
console.log(product(0,2)); // 0

function printDay(num){
  day = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
  return day[num - 1];
}

console.log(printDay(4)); // "Wednesday"
console.log(printDay(41)); // undefined

function lastElement(arr){
  if (arr.length === 0) return undefined;
  return arr[arr.length - 1];
}
console.log(lastElement([1,2,3,4])); // 4
console.log(lastElement([])); // undefined

function numberCompare(num1, num2){
  if(num1 > num2){
    return "First is greater"
  } else if(num1 < num2){
    return "Second is greater"
  } else {
    return "Numbers are equal"
  }
}
console.log(numberCompare(1,1)); // "Numbers are equal"
console.log(numberCompare(2,1)); // "First is greater"
console.log(numberCompare(1,2)); // "Second is greater"

function singleLetterCount(str, char){
  let count = 0;
  for(let i = 0; i < str.length; i++){
    if(str[i].toLowerCase() === char.toLowerCase()){
      count++;
    }
  }
  return count;
}
console.log(singleLetterCount('amazing','A')); // 2
console.log(singleLetterCount('Rithm School','o')); // 2
console.log(singleLetterCount('Rithm School','z')); // 0

//Part II


//Part III
