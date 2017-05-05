#7.5 mins

def countHoles(num)
    holes = 0
    no_holes = [1, 2, 3, 5, 7]
    one_hole = [0, 4, 6, 9]
    two_holes = [8]

    num.to_s.split("").each do |number|
        holes += 1 if one_hole.include?(number.to_i)
        holes += 2 if number == "8"
    end
    holes
end
