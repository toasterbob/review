//What is the DOM?

// The Document Object Model (DOM) is a programming interface for HTML,
// XML and SVG documents. It provides a structured representation of the document as a tree.

// The DOM provides a representation of the document as a structured group
// of nodes and objects, possessing various properties and methods. Nodes
// can also have event handlers attached to them, and once an event is
// triggered, the event handlers get executed. Essentially, it connects web
// pages to scripts or programming languages.

// To access the DOM, we make use of the document object. This object has
// properties and functions that we use to access our HTML elements which
// we can manipulate with JavaScript.

//How to access elements in the DOM

// The easiest way to select elements is by their id using the getElementById
// function on the document object (document.getElementById). This returns
// a SINGLE element (because ids must be unique!).
var container = document.getElementById("container");

// We can also use a function called querySelector, which selects a SINGLE
// element using CSS selectors. If multiple elements match the query you
// pass in to querySelector, the function will simply return the first
// matching element that it finds.

var container = document.querySelector("#container");
// Notice that when we select by id using querySelector, we pass in the
// string #container, not container.

// To select multiple elements, we can use getElementsByTagName or getElementsByClassName

var divs = document.getElementsByTagName("div");

//  or we can use querySelectorAll and pass in a CSS selector.
var divs = document.querySelectorAll("div");



// Here is another example using getElementsByClassName and the same thing with querySelectorAll.
var divsWithClassOfHello = document.getElementsByClassName("hello");
var divsWithClassOfHello = document.querySelectorAll(".hello");

// As you can see, when you pass in a class name using getElementByClassName,
// you don't need to start the string with a dot.

// On the other hand, querySelectorAll takes in any valid CSS query,
// which is why you need to pass in .hello if you want it to find all
// elements with a class of "hello."
////////////////////////////////////////////////////////////////////////

// DOM Manipulation 








//
