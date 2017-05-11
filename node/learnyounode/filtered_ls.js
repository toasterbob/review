var fs = require('fs');
var path = require("path");

var file = process.argv[2];
var ext = process.argv[3];

fs.readdir(file, (err, list) => {
  if (err) throw err;
  list = list.toString().split(",");
  list.forEach(filename => {
    // console.log(`${filename} yy`);
    // console.log(`.${ext}`)
    if(path.extname(filename) === `.${ext}`){
      console.log(`${filename}`);
    }
  });

});

// var fs = require('fs')
//     var path = require('path')
//
//     var folder = process.argv[2]
//     var ext = '.' + process.argv[3]
//
//     fs.readdir(folder, function (err, files) {
//       if (err) return console.error(err)
//       files.forEach(function (file) {
//         if (path.extname(file) === ext) {
//           console.log(file)
//         }
//       })
//     })
