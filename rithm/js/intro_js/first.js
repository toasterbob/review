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


//Difference between == and ===
//== allows for type coercion of the values, while === does not.
//in fact, === is sometimes referred to as the "strict" equality operator,
//while == is sometimes referred to as the "loose" equality operator

// 1.
5 + "hi"; // "5hi"

// 2.
if ("foo") {
  console.log("this will show up!");
}

// 3.
if (null) {
  console.log("this won't show up!");
}

// 4.
+"304"; // 304
"" + 2; // "2"

5 == "5"; // true
5 === "5"; // false
"true" === true; // false
"true" == true; // false
true == 1; // true
true === 1; // false
undefined === null; // false
undefined == null; // true

/*
In JavaScript there are 6 falsey values:

0
""
null
undefined
false
NaN (short for not a number)
*/

!!false //false
!!-1 //true
!!-0 //false
!![] //true
!!{} // true
!!"" //false
!!null //false


//switch

var feeling = prompt("How are you feeling today?").toLowerCase();
// what do you think the .toLowerCase does at the end?

switch(feeling){
    case "happy":
        console.log("Awesome, I'm feeling happy too!");
        break;
    case "sad":
        console.log("That's too bad, I hope you feel better soon.");
        break;
    case "hungry":
        console.log("Me too, let's go eat some pizza!");
        break;
    default:
        console.log("I see. Thanks for sharing!");
}

5 % 3 === 2 // true (the remainder when five is divided by 3 is 2)

var num = prompt("Please enter a whole number");
if ( num % 2 === 0 ) {
    console.log("the num variable is even!")
} else if ( num % 2 === 1) {
    console.log("the num variable is odd!")
} else {
    console.log("Hey! I asked for a whole number!");
}


var num = Math.random();

if (num > .5){
  console.log("Over 0.5 ", num)
} else {
  console.log("Under 0.5 ", num)
}

// falsey - 0, "", false, null, undefined and NaN.
