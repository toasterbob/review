// Number 1
function integer_check(num){
  return num === Math.floor(num);
}


// Number 2

(function() {
  let a = b = 5; //a is in scope for the function.  b i guess assumes to be out of scope
})();

console.log(b); // b is 5, but a is not defined.
// But b is not declared anywhere in the function with var so it is set equal to 5 in the global scope.

// Number 3 - currying
function multiply(a){
  return function(b){
    return function(c){
      return a * b * c;
    };
  };
}

let d = multiply(5)(6);
d(2) //60
