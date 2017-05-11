var fs = require('fs');
var path = require("path");

var file = process.argv[2];
var ext = process.argv[3];

fs.readdir(file, (err, list) => {
  if (err) throw err;
  list = list.toString();
  list.forEach(filename => {
    if(path.extname(filename) === `.${ext}`){
      console.log(filename);
    }
  });

});

// fs.readFile( ext, (err, data) => {
//   if (err) throw err;
//   data = data.toString();
//   console.log(data);
// });
