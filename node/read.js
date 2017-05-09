var fs = require("fs");
// import fs from "fs"

fs.readFile('data.txt', (err, data) => {
  console.log(data.toString());
});
