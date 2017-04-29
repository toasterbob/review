function StairCase(n) {
  let result = ""
  for(let i=1; i <= n; i++){
     let space = " ".repeat(n - i);
     let stairs = "#".repeat(i);
     console.log(space + stairs);
  }

}

StairCase(6);
