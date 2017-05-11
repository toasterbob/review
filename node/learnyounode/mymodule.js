var fs = require('fs');
var path = require("path");

var file = process.argv[2];
var ext = process.argv[3];

module.exports = function (files, exts, callback){
  // console.log(files);
  // console.log(exts);
  callback();
};

// module.exports = fs.readdir(file, (err, list) => {
//   if (err) throw err;
//   // list = list.toString().split(",");
//   list.forEach(filename => {
//     // console.log(`${filename} yy`);
//     // console.log(`.${ext}`)
//     if(path.extname(filename) === `.${ext}`){
//       console.log(`${filename}`);
//     }
//   });
//
// });
