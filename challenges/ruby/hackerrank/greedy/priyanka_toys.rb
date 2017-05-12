def toys(arr)
    count = 0

    while arr.length > 0
        val = arr.shift
        count += 1
        while arr[0] && arr[0] >= val && arr[0] <= val + 4
           arr.shift
        end
    end
    count
end

gets
arr = gets.strip.split(" ").map(&:to_i).sort
puts toys(arr)
