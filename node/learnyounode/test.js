function returnMe() {
  for (var i=0; i<2; i++) {
      if (i >= 1) return i;
    for(var j=0; j < 3; i++)
      if (j >= 1) return j;
  }
}


// 1

function foo(a, x){
  for (var i = 0; i < a.length; ++i){
    for (var j = i + 1; j < a.length; ++j){
      for (var k = j + 1; k < a.length; ++k){
        if (a[i] + a[j] + a[k] === x) return true;
      }
    }
  }
  return false;
}
let a = [3, 4, 5]
console.log(foo(a, 12))
