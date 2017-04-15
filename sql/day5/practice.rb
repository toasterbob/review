class Dog
  # defines a class method that will define more methods; this is
  # called a **macro**.

  def self.makes_sound(name)
    define_method(name) { puts "#{name}!" }
  end

  makes_sound(:woof)
  makes_sound(:bark)
  makes_sound(:grr)
end

dog = Dog.new
dog.woof
dog.bark
dog.grr

Dog.makes_sound(:bow_wow)
dog.bow_wow

def do_three_times(object, method_name)
  3.times { object.send(method_name) }
end

do_three_times(dog, :bark)
