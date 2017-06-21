
def stone_game(x)
    return "Second" if x % 7 == 0 || x % 7 == 1
    "First"
end

n = gets.strip.to_i

n.times do
   x = gets.strip.to_i
   puts stone_game(x)
end

# Winning
# 1 - Second
# 2 - First
# 3 - First
# 4 - First
# 5 - First
# 6 - First
# 7 - Second
#
# If one mods by 7, then either 0 or 1 will result in a win for the Second
# player. Everything else is the First player, with optimal game play.
#######################
t = gets.to_i
t.times do
    n = gets.to_i
    puts (n % 7 <= 1) ? "Second" : "First"
end
#########################
