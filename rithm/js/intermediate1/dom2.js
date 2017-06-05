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











//
