//Objects within Objects

var schools = {
    georgiaInstituteOfTechnology: {
        address: "North Ave NW, Atlanta, GA 30332",
        phoneNumber: "(404) 894-2000",
        dateEstablished: "October 13, 1885"
    }
};

// This statement assigns the object that is nested inside
// of the larger schools object to the gtObject variable.
var gtObject = schools.georgiaInstituteOfTechnology;

gtObject.address; // returns "North Ave NW, Atlanta, GA 30332"
gtObject.phoneNumber; // returns "(404) 894-2000"
gtObject.dateEstablished; //returns "October 13, 1885"

//In fact, we don't even need the intermediate gtObject variable.
schools.georgiaInstituteOfTechnology.address;
schools.georgiaInstituteOfTechnology.phoneNumber;
schools.georgiaInstituteOfTechnology.dateEstablished;

//Arrays Within Objects
var instructorData = {
    name: "Tim",
    favoriteHobbies: ["Sailing", "Hiking", "Coding"]
};
instructorData.favoriteHobbies[0]; // returns "Sailing"
//How would you add another hobby to the favoriteHobbies array inside of the object?
instructorData.favoriteHobbies.push("snowboarding");
instructorData.favoriteHobbies //["Sailing", "Hiking", "Coding", "snowboarding"]

for(keys in instructorData){
 console.log(keys);
}
// VM1655:2 name
// VM1655:2 favoriteHobbies

//Complex Objects
var instructorData = {
    name: "Elie",
    additionalData: {
        instructor: true,
        favoriteHobbies: ["Playing Cello", "Tennis", "Coding"],
        moreDetails: {
            favoriteBasketballTeam: "New York Knicks",
            numberOfSiblings: 3,
            isYoungest: true,
            hometown: {
                city: "West Orange",
                state: "NJ",
            },
            citiesLivedIn: ["Seattle", "Providence", "New York"]
        }
    }
};

instructorData.name; // "Elie"
instructorData.additionalData.instructor; // true
instructorData.additionalData.favoriteHobbies[2]; // "Coding"
instructorData.additionalData.moreDetails.favoriteBasketballTeam; // "New York Knicks"
instructorData.additionalData.moreDetails.hometown.state; // "NJ"
instructorData.additionalData.moreDetails.citiesLivedIn[1]; // "Providence"

var instructorData = {
    name: "Mark",
    additionalData: {
        instructor: true,
        favoriteHobbies: ["snowbaording", "travel", "photography"],
        moreDetails: {
            favoriteBasketballTeam: "Warriors",
            numberOfSiblings: 2,
            isYoungest: false,
            hometown: {
                city: "Indio",
                state: "CA",
            },
            citiesLivedIn: ["Toledo", "Tokyo", "Indio", "San Diego", "Moon Lake", "New York"]
        }
    }
};

instructorData.name; // "Elie"
instructorData.additionalData.instructor; // true
instructorData.additionalData.favoriteHobbies[2]; // "Coding"
instructorData.additionalData.moreDetails.favoriteBasketballTeam; // "New York Knicks"
instructorData.additionalData.moreDetails.hometown.state; // "NJ"
instructorData.additionalData.moreDetails.citiesLivedIn[1]; // "Providence"



// Using the dot notation is a great way to access values in nested
// objects. However, when dynamically setting values in a nested object
// (when you don't know exactly what the name of the key is going to be),
// you have to use the bracket notation.
var programmingLanguages = {
    java: {
        yearCreated: 1995,
        creator: "James Gosling"
    },
    javaScript: {
        yearCreated: 1995,
        creator: "Brendan Eich"
    }
}
// Remember, that when adding keys to an object, if you do NOT know exactly
// what the name of the key will be (meaning that the key will be
// dynamically created), you HAVE to use the bracket notation.
function addProgrammingLanguage(nameOfLanguage, yearLanguageCreated, creatorOfLanguage){
    // how can we access the programming languages object?
    // We can't use dot notation, because we don't know the name of
    // the key until the function is called.
    // Instead we use bracket notation where the key is the
    // nameOfLanguage that is being passed to the function.
    programmingLanguages[nameOfLanguage] = {
        // Creating the object which will be the value of the
        // key.  We can directly assign the yearLanguageCreated
        // and creatorOfLanguage to the appropriate keys here.
        yearCreated: yearLanguageCreated,
        creator: creatorOfLanguage
    }
}

// Usage example: Adding a key of ruby to the programming language object,
// with the value of 1995 for the key "yearCreated" and the value
// "Yukihiro Matsumoto" for creatorOfLanguage
addProgrammingLanguage("ruby", 1995, "Yukihiro Matsumoto");

//Writing functions to produce values in a nested data structure
//When you're interacting with a nested data structure, sometimes it's
//helpful to encapsulate some of your logic into a function.

var instructorData = {
    name: "Elie",
    additionalData: {
        instructor: true,
        favoriteHobbies: ["Playing Cello", "Tennis", "Coding"],
        moreDetails: {
            favoriteBasketballTeam: "New York Knicks",
            numberOfSiblings: 3,
            isYoungest: true,
            hometown: {
                city: "West Orange",
                state: "NJ",
            },
            citiesLivedIn: ["Seattle", "Providence", "New York"]
        }
    }
};

//Exercises
function displayCities(){
  let cities = instructorData.additionalData.moreDetails.citiesLivedIn
  for(let i = 0; i < cities.length; i++){
    console.log(cities[i]);
  }
}
displayCities();
// "Seattle"
// "Providence"
// "New York"

function displayHometownData(){
  let home = instructorData.additionalData.moreDetails.hometown;
  for(var key in home){
    console.log(home[key]);
  }
}
displayHometownData();


// Let's write a function called addDetail that accepts two parameters, a
// key and a value and adds the key and value to the moreDetails object and
// returns the moreDetails object
function addDetail(key, value){
  instructorData.additionalData.moreDetails[key] = value;
  return instructorData.additionalData.moreDetails;
}

//theirs
function addDetail(key,value){
    var detailsObject = instructorData.additionalData.moreDetails;
    detailsObject[key] = value;
    return detailsObject;
}


addDetail("isHilarious", true);
/*
{
    favoriteBasketballTeam: "New York Knicks",
    numberOfSiblings: 3,
    isYoungest: true,
    hometown: {
        city: "West Orange",
        state: "NJ",
    },
    citiesLivedIn: ["Seattle", "Providence", "New York"],
    isHilarious: true
}
*/
addDetail("previousApartments", ["Mission", "North Beach", "Nob Hill"]);
/*
{
    favoriteBasketballTeam: "New York Knicks",
    numberOfSiblings: 3,
    isYoungest: true,
    hometown: {
        city: "West Orange",
        state: "NJ",
    },
    citiesLivedIn: ["Seattle", "Providence", "New York"],
    isHilarious: true
    previousApartments: ["Mission", "North Beach", "Nob Hill"]
}
*/

//Finally, let's write a function called removeDetail that removes a
//key in the moreDetails object and returns the moreDetails object (the
//new keys added above are not included in these examples).
function removeDetail(key){
  delete instructorData.additionalData.moreDetails[key];
  return instructorData.additionalData.moreDetails;
}

//theirs
function removeDetail(key){
    var detailsObject = instructorData.additionalData.moreDetails;
    var valueToBeRemoved = detailsObject[key];
    delete detailsObject[key];
    return detailsObject;
}


removeDetail('citiesLivedIn');
/*
{
    favoriteBasketballTeam: "New York Knicks",
    numberOfSiblings: 3,
    isYoungest: true,
    hometown: {
        city: "West Orange",
        state: "NJ",
    }
}
*/
removeDetail('hometown');
/*
{
    favoriteBasketballTeam: "New York Knicks",
    numberOfSiblings: 3,
    isYoungest: true
}
*/
removeDetail('favoriteBasketballTeam');
/*
{
    numberOfSiblings: 3,
    isYoungest: true
}
*/

//Nested Objects Exercises

var nestedData = {
  innerData: {
    order: ["first", "second", "third"],
    snacks: ["chips", "fruit", "crackers"],
    numberData: {
        primeNumbers: [2,3,5,7,11],
        fibonnaci: [1,1,2,3,5,8,13]
    },
    addSnack: function(snack){
        this.snacks.push(snack);
        return this;
    }
  }
};

//Using a for loop, console.log all of the numbers in the primeNumbers array.
var prime = nestedData.innerData.numberData.primeNumbers;
for(let i = 0; i < prime.length; i++){
  console.log(prime[i]);
}
//Using a for loop, console.log all of the even Fibonnaci numbers.
var fib = nestedData.innerData.numberData.fibonnaci;
for(let i = 0; i < fib.length; i++){
  console.log(fib[i]);
}
//Console.log the value "second" inside the order array.
console.log(nestedData.innerData.order[1]);












//
