var fs = require('fs');


let file = fs.readFile( process.argv[2], (err, data) => {
  if (err) throw err;
  data = data.toString().split("\n");
  console.log(data.length - 1);
});




// var fs = require('fs')
//     var file = process.argv[2]
//
//     fs.readFile(file, function (err, contents) {
//       if (err) {
//         return console.log(err)
//       }
//       // fs.readFile(file, 'utf8', callback) can also be used
//       var lines = contents.toString().split('\n').length - 1
//       console.log(lines)
//     })
