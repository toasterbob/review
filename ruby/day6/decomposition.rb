# Choosing the right level of granularity

#  large class is >125 lines of code. Sometimes that's not a design mistake,
# but it's suspicious after that. 300+ lines is a behemoth

class Minnow
  def swim
    # swim away from any sharks
  end
end

class Shark
  def swim
    # swim toward closest fish
  end
end

class Minnow
  attr_reader :position

  def initialize(initial_position)
    # save the minnow's initial position
    @position = initial_position
  end

  def swim
    # swim away from any sharks; update @position
  end
end
