let nums = process.argv.slice(2).map(a => {return Number(a);});
let total = 0;
nums.forEach(a => {
  total += a;
});
console.log(total);
