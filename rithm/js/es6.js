// class

function createStudent(first, last){
  return{
    first: first,
    last: last
  };
}

function Student(first, last){
  this.first = first;
  this.last = last;

}

new Student("Tim", "Garcia"); // creates {}, assign this = {},
// return this - creates an implicit return, creates link between
//that object and the protype property of the function just run

Student.prototype.sayHi = function(){
  return "hi!";
};

class Person {
  constructor(first, last){
    this.first = first;
    this.last = last;
  }

}
