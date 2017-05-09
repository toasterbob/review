var fs = require("fs");

fs.readFile('input.txt', (err,data) => {
  let ranges = data.toString().split("\n");
  priceRange(ranges);
});

const priceRange = function(data){

  let first = data[0]; //"5 3";
  let range = data[1]; //"188930 194123 201345 154243 154243";

  let nums = first.split(" ").map(a => { return parseInt(a);});
  let arr = range.split(" ").map(a => { return parseInt(a);});
  let results = [];

  for(let i = 0; i <= nums[0] - nums[1]; i++){
    let total = 0;
    let decreaseStreak = 0;
    let increaseStreak = 0;

    for(let j = i; j < nums[1] + i - 1; j++){
      if(arr[j] < arr[j+1]){
        decreaseStreak = 0;
        total = total + (1 + increaseStreak);
        increaseStreak++;
      } else if (arr[j] > arr[j+1]){
        increaseStreak = 0;
        total = total - (1 + decreaseStreak);
        decreaseStreak++;
      }
    }
    console.log(total);
  }
};
