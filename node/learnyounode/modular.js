var mymodule = require('./mymodule.js');

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
function callback(err, data) {
    if(err){
      console.log(err);
    } else {
      data.forEach(datum => {
        console.log(datum);
      });
    }
  }

mymodule(file, ext, callback);
