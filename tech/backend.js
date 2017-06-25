function add(x, y){
  if (x && y){
    return x + y;
  } else {
    return function(y){
      return x + y;
    }
  }
}


add(2, 5); // 7
add(2)(5); // 7

//refactor 
function add(x, ...yArgs){
  if (yArgs.length > 0){
    let total = x;
    for(let i = 0; i < yArgs.length; i++){
      total += yArgs[i];
    }
    return total;
  } else {
    return function(y){
      return x + y;
    };
  }
}
add(2, 5, 9); // 16
add(2, 5); // 7
add(2)(5); // 7
