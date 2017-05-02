// Number 1

(function() {
  let a = b = 5; //a is in scope for the function.  b i guess assumes to be out of scope
})();

console.log(b); // b is 5, but a is not defined.


// Number 2
