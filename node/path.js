var path = require("path");

// Normalize a path
console.log(path.normalize('test/test1//2slashes/1slash/tab/..'));

// Join multiple paths together
console.log(path.join('/first', 'second', 'something', 'then', '..'));
