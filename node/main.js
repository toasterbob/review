var helpers = require('./helpers');
// import * as helpers from './helpers';
var moreHelpers = require('./moreHelpers');
var evenMoreHelpers = require('./evenMoreHelpers');

helpers.sayHi();

console.log(moreHelpers.firstName);
moreHelpers.sayHello();
moreHelpers.sayGoodbye();

evenMoreHelpers();  //this is a function on its own 
