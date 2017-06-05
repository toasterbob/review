////////////////////////////////////////////////////////////////////////
// We can change the text of an element through the innerHTML property.
var firstDiv = document.getElementsByTagName("div")[0];
firstDiv.innerHTML = "<b>Just changed!</b>"; //you can use html tags on innerHTML

// This can also be done using the innerText property.
var secondDiv = document.getElementsByTagName("div")[1];
secondDiv.innerText = "Just changed Again!"; //innerText retrieves and sets the content of the tag as plain text

// What's the difference between innerText and innerHTML?
// innerText retrieves and sets the content of the tag as plain text,
// whereas innerHTML retrieves and sets the same content but in HTML format.

// We can also directly manipulate the CSS properties for elements
// (through inline styling) with the style property.

var firstDiv = document.getElementsByTagName("div")[0];

firstDiv.style.color = "red";
firstDiv.style.backgroundColor = "teal";

// Notice that if you're accessing CSS properties using dot notation,
// you need to camelCase those property names
// since firstDiv.style.background-color is invalid JavaScript.

// Bonus question: what do you think will happen if you try typing this in
// the console?) However, if you use brackets, you can write the properties
// the same way as you would in a stylesheet
firstDiv.style["background-color"] = "purple"; // this works too


// If we want to access/modify attributes on elements, we can do that with
// getAttribute and setAttribute:
var body = document.getElementById("container");

body.getAttribute("id"); // "container"
body.setAttribute("id", "new_container");
body.getAttribute("id"); // "new_container"

//We can also add and remove classes to elements using classList
var secondDiv = document.getElementsByTagName("div")[1];

secondDiv.classList; // ["hello"]
secondDiv.classList.add("another_class");
secondDiv.classList; // ["hello", "another_class"]
secondDiv.classList.remove("hello");
secondDiv.classList; // [another_class"]
// Notice here that we use methods called add and remove, not the push
// and pop methods we've seen when dealing with arrays. This is because the
// classList isn't actually an array and doesn't have push or pop methods on it.

// Traversing the DOM

// Another very common operation when working with the DOM is trying to
// find elements inside of other elements. When we travel through the DOM
// in search of something, we are doing what is called DOM traversal. Here
// are a few common methods we can use for finding elements and/or text
// nodes in relation to an element that we have already found.

var container = document.getElementById("container");
container.childNodes; // // this contains all of the nodes (including text nodes) that are children
container.childNodes.length; // 11
container.children; // this contains all of the elements that are children of the element we have selected
container.children.length; // 5

var link = document.querySelector("a");
link.parentElement; // <body id="container">...</body>
link.previousElementSibling; // <div class="hello">Hello Everyone!</div>
link.previousSibling; // text node
link.nextSibling; // text node
link.nextElementSibling; // <button>​Click me!​</button>​

// Creating elements

// To create elements we use the .createElement function on the document
// object and pass in a string with the name of the element that we would
// like to create. This will just return a new HTML element without any
// text/attributes or placement on the page!
var newDiv = document.createElement("div");

// So now that we created this element, how do we place it on the page?
//Appending elements
var button = document.createElement("button");
button.innerText = "I am a button created with JavaScript!";

var container = document.getElementById("container");
container.appendChild(button);

// And now that we created an element, how do we remove one?

var linkToBeRemoved = document.querySelector("a");
var container = document.getElementById("container");
container.removeChild(linkToBeRemoved); //removed link

//Changing multiple elements
// So what would happen if we wanted to change all of our divs to have a
// background color of red? Unfortunately, we can not do that without a loop:

var divs = document.querySelectorAll("div");
divs.style.backgroundColor = "red"; // this will not work, try to understand the error you receive!

// we have to use a loop for each one instead.
for(var i = 0; i < divs.length; i++){
    divs[i].style.backgroundColor = "red"; // this will work!
}
//
