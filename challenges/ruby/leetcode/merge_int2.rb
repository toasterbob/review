def merge(intervals)
    result = []
    hash = Hash.new {false}
    intervals.each do |int|
        int.start.upto(int.end) { |i| hash[i] = true }
    end
    arr = hash.keys.sort!

    i = 0
    start = arr[i]
    while i < arr.length
        if arr[i + 1] = arr[i] + 1
            i += 1
        else
            result << Interval.new(start, arr[i])
            start = arr[i + 1]
            i += 1
        end
    end
    result
end

if __FILE__ == $PROGRAM_NAME
  intervals = [[1,3],[2,6],[8,10],[15,18]]
  intervals2 = [[1,4],[0,5]] #[[0, 5]]
  intervals3 = [[1,10],[4,5],[6,7],[8,9]]
  intervals4 = [[2,3],[4,5],[6,7],[8,9],[1,10]]
  intervals5 = [[2,3],[4,6],[5,7],[3,4]]
  p merge([[1,3],[2,6],[8,10],[15,18]])
  p merge(intervals2)
  p merge(intervals3)
  p merge(intervals4)
  p merge(intervals5)
end
