var mymodule = require('./mymodule.js');

var fs = require('fs');
var path = require("path");

var file = process.argv[2];
var ext = process.argv[3];

mymodule();
