# Polymorphism
class Animal:

    name = ""
    location = ""

    def __init__(self, name, location):
        self.name = name
        self.location = location

    def talk(self):
        pass

    def move(self):
        pass

    def breathe(self):
        pass

class Bird(Animal):
    def talk(self):
        print "Squawk"

    def move(self):
        print "Flying through the %s" % (self.location)

    def breathe(self):
        print "Take in air through beak"

class Dog(Animal):
    def talk(self):
        print "Woof"

    def move(self):
        print "Running on the %s" % (self.location)

    def breathe(self):
        print "Pant"

class Whale(Animal):
    def talk(self):
        print "Woooooeeeeeaaaowww"

    def move(self):
        print "Swimming in the %s" % (self.location)

    def breathe(self):
        print "Blow hole"

animals = [
    Bird("Polly", "sky"),
    Dog("Roger", "ground"),
    Whale("Moby", "sea")
]
for animal in animals:
    animal.talk()
    animal.move()
    animal.breathe()

# This function overloading is what we mean when we refer to Polymorphism. 
# Having said that, there are other forms of Polymorphism, other than function overloading.
