# interface classes are purely abstract, having no attributes and no implementation code in the functions.
# To create an Interface class in Python, we use the following syntax:
from abc import ABCMeta, abstractmethod

class MyInterface:
    __metaclass__ = ABCMeta

    def someFunction(param1, param2):
        raise NotImplementedError()

    def someOtherFunction(param3):
        raise NotImplementedError()

# In Python, we implement an Interface the same way we inherit from an Abstract parent class.
class myChildClass(AbstractParent, Interface1, Interface2):
    # My class implementation
