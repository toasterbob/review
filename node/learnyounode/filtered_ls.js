var fs = require('fs');
var file = process.argv[2];

fs.readdir(file, (err, list) => {
  if (err) throw err;
  list = list.toString();
  console.log(list);
});
