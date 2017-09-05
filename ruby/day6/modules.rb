#Modules

module Greetable
  def greet
    "Hello, my name is #{self.name}"
  end
end

class Human
  include Greetable

  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

class Robot
  include Greetable

  def name
    "Robot Model #2000"
  end
end

#extends

module Findable
  def objects
    @objects ||= {}
  end

  def find(id)
    objects[id]
  end

  def track(id, object)
    objects[id] = object
  end
end

class Cat
  extend Findable

  def initialize(name)
    @name = name
    Cat.track(@name, self)
  end
end

Cat.new("Gizmo")
Cat.find("Gizmo") # finds Gizmo Cat object

# the diamond problem

# The "diamond problem" (sometimes referred to as the "deadly diamond of
# death"[4]) is an ambiguity that arises when two classes B and C inherit
# from A, and class D inherits from both B and C. If there is a method in
# A that B and C have overridden, and D does not override it, then which
# version of the method does D inherit: that of B, or that of C?

# Ruby classes have exactly one parent but may also inherit from multiple
# modules; ruby class definitions are executed, and the (re)definition
# of a method obscures any previously existing definition at the time of
# execution. In the absence of runtime metaprogramming this has approximately
# the same semantics as rightmost depth first resolution.


# Namespaces
# Modules have a second, unrelated purpose: as namespaces.

module A
  def self.make_bacon
    ...
  end
end

module B
  def self.make_bacon
    ...
  end
end

# Let's use A and B in a program to make some bacon.

require "A"
require "B"

a_grade_bacon = A.make_bacon
b_grade_bacon = B.make_bacon
