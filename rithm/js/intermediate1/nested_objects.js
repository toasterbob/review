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
instructorData.favoriteHobbies.push("snowboarding");
instructorData.favoriteHobbies //["Sailing", "Hiking", "Coding", "snowboarding"]

for(keys in instructorData){
 console.log(keys);
}
// VM1655:2 name
// VM1655:2 favoriteHobbies


















//
