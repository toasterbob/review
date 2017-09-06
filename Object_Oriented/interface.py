
# To create an Interface class in Python, we use the following syntax:
from abc import ABCMeta, abstractmethod

class MyInterface:
    __metaclass__ = ABCMeta

    def someFunction(param1, param2):
        raise NotImplementedError()

    def someOtherFunction(param3):
        raise NotImplementedError()
