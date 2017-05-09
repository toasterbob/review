console.log(process.argv);

// node args.js 1 2 3
//The first value refers to the command which we are using to run node,
// the second is the absolute path to our file

// [ '/Users/marknoizumi/.nvm/versions/node/v6.2.1/bin/node',
//   '/Users/marknoizumi/Desktop/curriculum/node/args.js',
//   '1',
//   '2',
//   '3' ]

console.log(process.argv.slice(2));
// [ '1',
//   '2',
//   '3' ]
