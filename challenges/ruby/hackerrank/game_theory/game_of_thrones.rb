
def stone_game(x)
    return "Second" if x % 7 == 0 || x % 7 == 1
    "First"
end

n = gets.strip.to_i

n.times do
   x = gets.strip.to_i
   puts stone_game(x)
end
