# Information hiding

class Airplane
  def fly
    start_engine
    ...
  end

  private
  def start_engine
    ...
  end
end


# Instance variables are always "private" in the sense that they are not
# even methods. You can expose instance variables to the outside world by
# making public getter/setter methods using attr_accessor and the like.

# The point of object orientation is to present a simple interface,
# abstracting away the details inside the method implementations.

# A good guiding principle of OO design is: minimize the interfaces between
# your classes; expose the least possible amount of state and behavior,
# and have a good reason for every piece of information that you expose.
