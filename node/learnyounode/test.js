// 1

function foo(a, x){
  let total = 0;
  for (var i = 0; i < a.length; ++i){
    total++;
    for (var j = i + 1; j < a.length; ++j){
      total++;
      for (var k = j + 1; k < a.length; ++k){
        total++;
        if (a[i] + a[j] + a[k] === x) return total;
      }
    }
  }
  return false;
}

let arr = [9, 3, 1, 5, 6];
console.log(foo(arr, 12));

function sortNumber(a,b){
    if(a > b){
        return 1;
    } else if(a < b){
        return -1;
    } else{
        return 0;
    }
}

// function sortNumber(a,b) {
//     return a - b;
// }

function optimizeFoo(a, target){
  a = a.sort(sortNumber); //this is O(n)

  //this is 0(n)
  for(let i = 0; i < a.length - 2; i++){
    let j = i + 1;
    let k = a.length - 1 ;//last element
    let n = 0;
    while(k > j){ //when k equals j the loop ends
      console.log(n++);
      if(a[i] + a[j] + a[k] === target){
        return [i, j, k];
      } else if (a[i] + a[j] + a[k] < target){
        j++; // if the total is too small, increase j
      } else if (a[i] + a[j] + a[k] > target){
        k--; // if the total is too big, decrease k
      }
    }
  }
  return false;
}
console.log(optimizeFoo(arr, 15));
