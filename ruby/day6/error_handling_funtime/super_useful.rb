# PHASE 2
def convert_to_int(str)
  begin
    Integer(str)
  rescue ArgumentError => e
    puts e
    return nil
  end
end

# theirs
# def convert_to_int(str)
#   begin
#     num = Integer(str)
#   rescue ArgumentError
#     puts "Cannot convert to Integer. Please ensure you pass a valid numeric string"
#   ensure
#     num ||= nil
#   end
#
#   num
# end


# PHASE 3
# FRUITS = ["apple", "banana", "orange"]
#
# def reaction(maybe_fruit)
#
#     if FRUITS.include? maybe_fruit
#       puts "OMG, thanks so much for the #{maybe_fruit}!"
#     else
#       throw maybe_fruit
#     end
#
# end
#
# def feed_me_a_fruit
#   puts "Hello, I am a friendly monster. :)"
#   begin
#     puts "Feed me a fruit! (Enter the name of a fruit:)"
#     maybe_fruit = gets.chomp
#     reaction(maybe_fruit)
#   rescue ArgumentError => e
#     p e
#     if maybe_fruit == "coffee"
#       puts "I love coffee! But I'm hungry!"
#       retry
#     end
#   end
# end

# #theirs
# class CoffeeError < StandardError
#   def message
#     "I can't have any more caffeine. My poor heart couldn't take it. You can try again."
#   end
# end
#
# class NotAFruitError < StandardError
#   def message
#     "That doesn't look like a fruit. You tricked me. * runs away *"
#   end
# end
#
# def reaction(maybe_fruit)
#   if FRUITS.include? maybe_fruit
#     puts "OMG, thanks so much for the #{maybe_fruit}!"
#   elsif maybe_fruit == 'coffee'
#     raise CoffeeError
#   else
#     raise NotAFruitError
#   end
# end

# def feed_me_a_fruit
#   puts "Hello, I am a friendly monster. :)"
#
#   begin
#     puts "Feed me a fruit! (Enter the name of a fruit:)"
#     maybe_fruit = gets.chomp
#     reaction(maybe_fruit)
#   rescue CoffeeError => e
#     puts e.message
#     retry
#   rescue NotAFruitError => e
#     puts e.message
#   end
# end

FRUITS = ["apple", "banana", "orange"]
class CoffeeError < StandardError
  def message
    "I LOVE coffee, but I need to eat"
  end
end

class OtherError < StandardError
  def message
    "NEED FRUIT!!! NOT THAT"
  end
end

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == "coffee"
    raise CoffeeError
  else
    raise OtherError
  end
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"
  begin
    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit)
  rescue CoffeeError => e
    p e.message
    retry
  rescue OtherError => e
    p e.message
  end
end



# PHASE 4
class YearsKnown < StandardError

end

class NeedName < StandardError

end

class NeedPastime < StandardError

end

class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    raise YearsKnown unless yrs_known >= 5
    raise NeedName if name == "" || name.nil?
    raise NeedPastime if fav_pastime == "" || fav_pastime.nil? 
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known} years. Let's be friends for another #{100 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me."
  end
end
