# We would not want to allow an object of type Animal to be created. We
# would rather want an object of type Bird, or Dog, or Whale to be created
# instead. Thus, we define the Animal class as Abstract, leaving Bird, Dog
# and Whale as Concrete classes which can be instantiated as objects.

from abc import ABCMeta, abstractmethod

class MyAbstractClass:
    __metaclass__ = ABCMeta #This line defines the class as a whole as Abstract.

    @abstractmethod
    # This is referred to as a decorator, which is used to modify a function.
    # This Abstract Method decorator is used to define a function as Abstract.
    def getById(self, userId):
        pass

from abc import ABCMeta, abstractmethod

class Animal:
    __metaclass__ = ABCMeta

    name = ""
    location = ""

    def __init__(self, name, location):
        self.name = name
        self.location = location

    @abstractmethod
    def talk():
        pass

    @abstractmethod
    def move():
        pass

    @abstractmethod
    def breathe():
        pass
