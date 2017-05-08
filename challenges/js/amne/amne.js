let first = "5 3";
let range = "188930 194123 201345 154243 154243";

const priceRange = function(first, range){
  let nums = first.split(" ").map(a => { return parseInt(a)});
  let arr = range.split(" ").map(a => { return parseInt(a)});
  console.log(nums);
  console.log(arr);
}


priceRange(first, range);
