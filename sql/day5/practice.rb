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

do_three_times(dog, "bark")


class T
  def method_missing(*args)
    p args
  end
end

T.new.adfasdfa(:a, :b, :c)

T.new.hello

class Cat
  def say(anything)
    puts anything
  end

  def method_missing(method_name)
    method_name = method_name.to_s
    if method_name.start_with?("say_")
      text = method_name[("say_".length)..-1]

      say(text)
    else
      # do the usual thing when a method is missing (i.e., raise an
      # error)
      super
    end
  end
end

earl = Cat.new
earl.say_hello # puts "hello"
earl.say_goodbye # puts "goodbye"

class ActiveRecord::Base
  def method_missing(method_name, *args)
    method_name = method_name.to_s
    if method_name.start_with?("find_by_")
      # attributes_string is, e.g., "first_name_and_last_name"
      attributes_string = method_name[("find_by_".length)..-1]

      # attribute_names is, e.g., ["first_name", "last_name"]
      attribute_names = attributes_string.split("_and_")

      unless attribute_names.length == args.length
        raise "unexpected # of arguments"
      end

      search_conditions = {}
      attribute_names.length.times do |i|
        search_conditions[attribute_names[i]] = args[i]
      end

      # Imagine search takes a hash of search conditions and finds
      # objects with the given properties.
      self.search(search_conditions)
    else
      # complain about the missing method
      super
    end
  end
end

Object.is_a?(Object) # => true
Object.class # => Class
Class.superclass # => Module
Class.superclass.superclass # => Object


class Dog
  def self.all
    @dogs ||= []
  end

  def initialize(name)
    @name = name

    self.class.all << self
  end
end

d1 = Dog.new("Fido")
d2 = Dog.new("Fido 2.0")

p Dog.all
