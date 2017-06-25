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
