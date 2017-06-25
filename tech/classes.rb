class Pokemon
end

pikatchu = Pokemon.new
charmander = Pokemon.new

ObjectSpace.each_object(Pokemon) {|x| p x}
