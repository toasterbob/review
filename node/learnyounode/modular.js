var mymodule = require('./mymodule.js');

var fs = require('fs');
var path = require("path");

var file = process.argv[2];
var ext = process.argv[3];

// function bar (callback) {
//        foo(function (err, data) {
//          if (err)
//            return callback(err) // early return
//
//          // ... no error, continue doing cool things with `data`
//
//          // all went well, call callback with `null` for the error argument
//
//          callback(null, data)
//        })
//      }

mymodule(file, ext, (err, data) => {
    // if(err) throw err;
    data.forEach(line => {
      console.log(line);
    });
});
