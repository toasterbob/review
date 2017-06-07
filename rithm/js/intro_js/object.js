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


///////////////////////////////////////////////////////////////////////////////////////////////
//Object Iteration
var instructor = {
    name: "Matt",
    mathWizard: true,
    dogOwner: true
};

for(var singleKey in instructor){
  console.log(instructor[singleKey]);
}
// the loop will log:
// "Matt"
// true
// true

//Sometimes, we just want to check and see if a certain key exists in an object.

var obj = {
    favoriteNumber: 33,
    favoriteColor: 'blue'
}

if ("favoriteNumber" in obj){
  console.log("The favoriteNumber key exists!")
}

// "The favoriteNumber key exists!"

if ("nothing" in obj){
    console.log("The nothing key exists!"); //nothing happens here
}
//////////////////////////////////////////////////////////////////////////
var namesAndHobbies = {
    elie: "JavaScript",
    matt: "jogging",
    janey: "table building",
    tim: "sailing"
}

for(var key in namesAndHobbies){
  console.log(`${key} => ${namesAndHobbies[key]}`)
}

// Output should be:
// JavaScript => elie
// jogging => matt
// table building => janey
// sailing => tim

namesAndHobbies.mark = "Snowboarding";
namesAndHobbies; //{elie: "JavaScript", matt: "jogging", janey: "table building", tim: "sailing", mark: "Snowboarding"}

if ("mark" in namesAndHobbies){
  console.log(`mark => ${namesAndHobbies["mark"]}`)
} //mark => Snowboarding
//////////////////////////////////////////////////////////////////////////
//Object Exercises
var programming = {
    languages: ["JavaScript", "Python", "Ruby"],
    isChallenging: true,
    isRewarding: true,
    difficulty: 8,
    jokes: "http://stackoverflow.com/questions/234075/what-is-your-best-programmer-joke"
};

programming.languages.push("Go");
programming.difficulty = 7;
delete programming.jokes;
programming; {languages: Array(4), isChallenging: true, isRewarding: true, difficulty: 7}









//
