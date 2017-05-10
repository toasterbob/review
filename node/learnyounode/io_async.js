var fs = require('fs');

let file = fs.readFile(process.argv[2], function(a) {
  console.log(file)
})



console.log(file.length);
