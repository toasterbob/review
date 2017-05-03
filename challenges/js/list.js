("a").charCodeAt(); // 97
String.fromCharCode(122); // "z"

//capitalize with substrings 
let word = "mark";
let result += (word[0].toUpperCase() + word.substr(1, word.length - 1) + " ");
