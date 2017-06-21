
def stone_game(x)
    return "Second" if x == 1

end

n = gets.strip.to_i

n.times do
   x = gets.strip_to_i
   puts stone_game(x)
end
 
