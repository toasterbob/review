var fs = require('fs');

let file = fs.readFile(process.argv[2]).toString().split("\n");

console.log(file.length - 1);
