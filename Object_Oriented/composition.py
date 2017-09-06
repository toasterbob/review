# a Car is not just a car, it is also a collection of parts, such as a
# steering wheel, four wheels, an exhaust, an engine, and so on. Each of
# these components are objects themselves.
# To replicate this idea of an "object of objects", we use the OOP principle
# of Composition, to define a Composite Class made up of other classes.
class SteeringWheel:
    color = ""
    material = ""
    make = ""

    def turn(self, direction):
        # Some code

class Engine:
    engine_number = ""
    volume = ""

    def start(self):
       # Some code

    def stop(self):
       # Some code

class Windshield:
    thickness = ""
    area_size = ""

class Car:
    registration_number = ""
    color = ""
    steering_wheel = SteeringWheel()
    engine = Engine()
    wind_shield = Windshield()

    def __init__(self, registration_number, color):
        self.registration_number = registration_number
        self.color = color


my_car = Car("1234", "blue")
my_car.engine.engine_number = "9876"
my_car.engine.volume = "1.6"
my_car.steering_wheel.color = "black"
my_car.engine.start()
