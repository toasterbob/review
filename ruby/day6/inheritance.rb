class User
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name, @last_name = first_name, last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def upvote_article(article)
    article.upvotes += 1
  end
end

class SuperUser < User
  attr_reader :super_powers

  def initialize(first_name, last_name, super_powers)
    super(first_name, last_name)
    # We can call the superclass's implementation of any method using the
    # special super keyword.
    @super_powers = super_powers
  end

  def upvote_article(article)
    # extra votes
    article.upvotes += 3
  end

  def delete_user(user)
    return unless super_powers.include?(:user_deletion)

    # super user is authorized to delete user
    puts "Goodbye, #{user.full_name}!"
  end
end

# class Magazine
#   attr_accessor :editor
# end
#
# class Book
#   attr_accessor :editor
# end
#instead of above we can do this:

class Publication
  attr_accessor :editor
end

class Magazine < Publication
end

class Book < Publication
end

######################################

# class Animal
#   def make_n_noises(n = 2)
#     n.times { print "Growl " }
#   end
# end
#
# class Liger < Animal
#   def make_n_noises(num = 4)
#     num.times { print "Roar " }
#     # here we'll call super without any arguments. This will pass on `num`
#     # implicitly to super. You can think of this call to super as:
#     # `super(num)`
#     super
#   end
# end

########################################
class Animal
  attr_reader :species

  def initialize(species)
    @species = species
  end
end

class Human < Animal
  attr_reader :name

  def initialize(name)
    # super calls the original definition of the method
    # If we hadn't passed "Homo Sapiens" to super, then `name` would have
    # been passed by default.
    super("Homo Sapiens")
    @name = name
  end
end



if __FILE__ == $PROGRAM_NAME
  u = User.new("Jamis", "Buck")
  p u.full_name
  su = SuperUser.new("David", "Heinemeier Hansson", [:user_deletion])
  p su.full_name
  p su.delete_user(u)

  # Liger.new.make_n_noises(3) # => Roar Roar Roar Growl Growl Growl

  h = Human.new("Bob")
  p h.species
  p h.name
end
