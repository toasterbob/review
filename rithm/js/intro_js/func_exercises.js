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
  if (arr.length === 0) return undefined; //not necessary
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

function arrayManipulation(arr, c1, c2, val){
  if(c1 === "add"){
    if(c2 === "end"){
      arr.push(val);
    } else {
      arr.unshift(val);
    }

  } else if (c1 === "remove"){
      if(c2 === "beginning"){
        return arr.shift();
      } else if(c2 === "end"){
        return arr.pop();
      }
  }
  return arr
}
console.log(arrayManipulation([1,2,3], "remove", "end")); // 3
console.log(arrayManipulation([1,2,3], "remove", "beginning")); // 1
console.log(arrayManipulation([1,2,3], "add", "beginning", 20)); // [20,1,2,3]
console.log(arrayManipulation([1,2,3], "add", "end", 30)); // [1,2,3,30]


//Part III
