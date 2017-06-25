class Pokemon
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

pikachu = Pokemon.new("pikachu")
charmander = Pokemon.new("charmander")

ObjectSpace.each_object(Pokemon) {|x| puts x.name}
