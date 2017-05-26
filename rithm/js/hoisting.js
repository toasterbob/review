// hoisting

console.log(thing);
var thing = "nice";

function sayHi(){
  return elie;
  var elie = "Instructor"; // hoists elie to the top but it's undefined 

}

sayHi();
