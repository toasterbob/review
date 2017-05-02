// Number 1
function integer_check(num){
  return num === Math.floor(num);
}


// Number 2

(function() {
  let a = b = 5; //a is in scope for the function.  b i guess assumes to be out of scope
})();

console.log(b); // b is 5, but a is not defined.


// Number 3
