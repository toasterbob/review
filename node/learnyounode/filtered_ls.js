var fs = require('fs');
var file = process.argv[2];
var ext = process.argv[3];

fs.readdir(file, (err, list) => {
  if (err) throw err;
  list = list.toString();
  console.log(list);
});

// fs.readFile( ext, (err, data) => {
//   if (err) throw err;
//   data = data.toString();
//   console.log(data);
// });
