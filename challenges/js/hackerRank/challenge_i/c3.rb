def countX(steps)
    a, b = 0, 0
    steps.each do |step|
        x, y = step.split(" ").map(&:to_i)
        a = x if x > a
        b = y if y > b
    end

    result = Array.new(a) {Array.new(b) {0}} #need to adjust array size

    steps.each do |step|
        x, y = step.split(" ").map(&:to_i)
        #[2,3]
        i = 0
        while i < x
            j = 0
            while j < y
                if result[i][j]
                    result[i][j] = result[i][j] + 1
                else
                    result[i][j] = 1
                end
                j += 1
            end
            i += 1
        end
    end

    p result
    result = result.flatten
    p result
    result.count(result.max)
end
