# Definition for an interval.
# class Interval
#     attr_accessor :start, :end
#     def initialize(s=0, e=0)
#         @start = s
#         @end = e
#     end
# end

# @param {Interval[]} intervals
# @return {Interval[]}

def merge(intervals)
    new_intervals = []
    i = 0
    while i < intervals.length - 1
        temp_intervals = []
        starts, ends = intervals[i][0], intervals[i][1]
        j = i + 1
        while j < intervals.length
            starts2, ends2 = intervals[j][0], intervals[j][1]
            if starts2 >= starts && starts2 <= ends
                ends = ends2 if ends2 > ends
            elsif starts2 <= starts && ends2 >= starts && ends2 <= ends
                starts = starts2 if starts2 < starts
            else
                temp_intervals << intervals[j]
            end
            j += 1
        end
        new_intervals << [starts, ends]
        new_intervals.concat(temp_intervals)
        intervals = new_intervals
        i += 1
    end
    intervals
end
