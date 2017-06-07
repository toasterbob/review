// Objects allow you to map keys to values.
var firstObj = {
    firstName: "Tim",
    lastName: "Garcia",
    isInstructor: true
};
// dot notation:
firstObj.firstName;       // returns "Tim"
firstObj.lastName;        // returns "Garcia"
firstObj.isInstructor;    // returns true
firstObj.keyDoesntExist;  // returns undefined
//bracket notation:
firstObj["firstName"];       // returns "Tim"
firstObj["lastName"];        // returns "Garcia"
firstObj["isInstructor"];    // returns true
firstObj["keyDoesntExist"];  // returns undefined

var obj = {};
var person = "Tom";

obj[person] = "This is a person";
obj[1+1+1] = "Three";

obj;


/*
obj now should look like this:
{
    Tom: "This is a person",
    3: "Three"
}
*/
// use the bracket notation when you need to evaluate some expression
// or pass in a variable to get the name of the key
obj.3;// Syntax Error! Can't use the dot notation
obj[3]; // "Three" - we NEED to use the bracket notation
obj[person]; // "This is a person"
obj["Tom"]; // "This is a person"
obj.person; // undefined

//Keys Are Always Strings in JavaScript
var idToName = {
    754: "Tim",
    843: "Matt",
    921: "Janey",
    192: "Elie"
};

idToName.754;  // causes an error
idToName["754"];  // returns "Tim"

var obj = {
    name: "Jon Snow",
    watchMember: true
};

obj.gameOfThrones = "awesome";
obj //{name: "Jon Snow", watchMember: true, gameOfThrones: "awesome"}

var obj = {
    name: "Elie",
    job: "Instructor"
};

delete obj.job; // returns true

obj; // {name: "Elie"}

var myObj = {
    firstName: "Mark",
    lastName: "Noizumi",
    occupation: "Software Engineer"
}
myObj.firstName;
myObj.lastName;
myObj.occupation;

myObj["firstName"];
myObj["lastName"];
myObj["occupation"]

myObj.hobby = "safecracker"
myObj; //{firstName: "Mark", lastName: "Noizumi", occupation: "Software Engineer", hobby: "safecracker"}

delete myObj.occupation; //true
myObj; //{firstName: "Mark", lastName: "Noizumi", hobby: "safecracker"}

// use the bracket notation when you need to evaluate some expression
// or pass in a variable to get the name of the key
