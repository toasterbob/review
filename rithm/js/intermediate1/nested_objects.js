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
}

instructorData.name; // "Elie"
instructorData.additionalData.instructor; // true
instructorData.additionalData.favoriteHobbies[2]; // "Coding"
instructorData.additionalData.moreDetails.favoriteBasketballTeam; // "New York Knicks"
instructorData.additionalData.moreDetails.hometown.state; // "NJ"
instructorData.additionalData.moreDetails.citiesLivedIn[1]; // "Providence"












//
