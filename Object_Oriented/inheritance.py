

# This allows us to define
# generic "parent" classes, whose functionality can then be extended and
# specialized by "children" classes which inherit from the parent.

# The following syntax is used in Python to create a child class which inherits from a parent class:
# class ChildClass(ParentClass):
#     # Class Definition goes here

# Python allows multiple inheritance, where you can provide a comma-separated
# list of parent classes to inherit from. However, please be very careful
# when doing this, and if you find yourself in a situation where you are
# about to use multiple inheritance, ask yourself why it is necessary, as
# you have likely made a design mistake.

class Property:

    property_id = 0
    name = ""
    description = ""
    address = ""
    owner_name = ""
    owner_telephone = ""
    owner_email = ""
    selling_price = ""
    surface_area = ""
    status = ""

    def __init__(self):
        self.property_id = 1

    def print_advert(self):
        if self.status == "Available":
            print "Property: P-%d - %s for $%d" % (self.property_id, self.name, self.selling_price)
            print self.description
            print "Surface Area: %s" % (self.surface_area)
            print "Owner: %s (%s)" % (self.owner_name, self.owner_telephone)
            print "Contact the owner at %s" % (self.owner_email)
        else:
            print "Sold!"

    def mark_sold(self):
        self.status = "Sold"

    def mark_available(self):
        self.status = "Available"

class Farm(Property):

    plot_number = ""
    land_area = 0
    farm_type = ""
    num_employees = 0
    num_buildings = 0
    has_dam = False
    has_stables = False
    has_greenhouse = False
    has_orchard = False

# Create Farm
my_farm = Farm()
my_farm.property_id = 1
my_farm.name = "Dairy Queen Farm"
my_farm.description = "A family-run dairy farm with a friendly staff and well cared for cows"
my_farm.selling_price = 1200000
my_farm.surface_area = "20 acres"
my_farm.owner_name = "Henry Ford"
my_farm.owner_telephone = "123456789"
my_farm.owner_email = "henry@ford.com"

# Set as Available
my_farm.mark_available()

# Display Advert
my_farm.print_advert()


# Types of Visibility
#
# There are three types of visibility:
# Public: The attribute or function are accessible from inside as well as outside of the class/object.
# Private: The attribute or function are only accessible within the class in which it is defined.
# Protected: The attribute or function are accessible between classes involved in inheritance, but not outside of that.
