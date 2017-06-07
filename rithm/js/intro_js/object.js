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
