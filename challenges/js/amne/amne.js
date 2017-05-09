let first = "5 3";
let range = "188930 194123 201345 154243 154243";

const priceRange = function(first, range){
  let nums = first.split(" ").map(a => { return parseInt(a)});
  let arr = range.split(" ").map(a => { return parseInt(a)});
  let results = []

  for(let i = 0; i <= nums[0] - nums[1]; i++){
    let total = 0;
    let decrease_streak = 0;
    let increase_streak = 0;
    
    for(let j = i; j < nums[1] + i - 1; j++){
      if(arr[j] < arr[j+1]){
        decrease_streak = 0;
        total = total + (1 + increase_streak)
        increase_streak++
      } else if (arr[j] > arr[j+1]){
        increase_streak = 0
        total = total - (1 + decrease_streak)
        decrease_streak++;
      }
    }
    console.log(total);
  }
}


priceRange(first, range);
