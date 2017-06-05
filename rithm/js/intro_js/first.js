alert("JS is cool"); //alert doesn't work in node
//about:blank  - when using the console
let color = prompt("What's your favorite color?");
let result = confirm("You are dumb!"); // true or false return via cancel or okay
console.log("This is less obtrusive. Color = ", color, " boolean=", result);
/* this is the start of
a multiline comment, and
this is the ending. */

/*
JavaScript has 6 primitive data types, but we'll only talk about 5 of them.
string - var greeting = "hello";
number - var favoriteNum = 33;
boolean - var isAwesome = true;
undefined - var foo; or var setToUndefined = undefined;
null - var empty = null;

the other is a symbol
*/

typeof ""; //- "string"
typeof 5; //- "number"
typeof false; //- "boolean"
typeof Symbol(); //- "symbol"
typeof undefined; //- "undefined"
typeof null; // hmmm, this is not what we expect, it returns "object"!

parseInt("2"); // 2
parseFloat("2"); // 2
parseInt("3.14"); // 3
parseFloat("3.14"); // 3.14
parseInt("2.3alkweflakwe"); // 2
parseFloat("2.3alkweflakwe"); // 2.3
parseInt("w2.3alkweflakwe"); // NaN (not a number)
parseFloat("w2.3alkweflakwe"); // NaN (not a number)
//A nice shorthand for this conversion is the unary operator +:
+"2"; // 2
+"3.14"; // 3.14
+"2.3alkweflakwe"; // NaN
+"w2.3alkweflakwe"; // NaN


//Converting to a boolean: !!
var greeting = "hi";
var nothing = 0;

!!greeting; // true
!!nothing; // false
