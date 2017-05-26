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

new Student("Tim", "Garcia"); // creates an implicit return
