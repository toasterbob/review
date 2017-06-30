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
    intervals2 = intervals.map(&:dup)
    new_intervals = []
    i = 0
    while i < intervals2.length
        temp_intervals = []
        starts, ends = intervals2[i][0], intervals2[i][1]

        j = i + 1
        while j < intervals2.length
            starts2, ends2 = intervals2[j][0], intervals2[j][1]
            if starts2 >= starts && starts2 <= ends
                ends = ends2 if ends2 > ends
            elsif starts2 <= starts && ends2 >= starts
                starts = starts2 if starts2 < starts
                ends = ends2 if ends2 > ends
            else
                temp_intervals << intervals2[j]
            end
            j += 1
        end
        new_intervals << [starts, ends]
        intervals2 = (new_intervals + temp_intervals).map(&:dup)

        i += 1
    end
    new_intervals
end

if __FILE__ == $PROGRAM_NAME
  intervals = [[1,3],[2,6],[8,10],[15,18]]
  intervals2 = [[1,4],[0,5]] #[[0, 5]]
  intervals3 = [[1,10],[4,5],[6,7],[8,9]]
  p merge([[1,3],[2,6],[8,10],[15,18]])
  p merge(intervals3)
end

######### submission
def merge2(intervals)
    intervals2 = intervals.map(&:dup)
    new_intervals = []
    i = 0
    while i < intervals2.length
        temp_intervals = []
        starts, ends = intervals2[i].start, intervals2[i].end

        j = i + 1
        while j < intervals2.length
            starts2, ends2 = intervals2[j].start, intervals2[j].end
            if starts2 >= starts && starts2 <= ends
                ends = ends2 if ends2 > ends
            elsif starts2 <= starts && ends2 >= starts
                starts = starts2 if starts2 < starts
                ends = ends2 if ends2 > ends
            else
                temp_intervals << intervals2[j]
            end
            j += 1
        end
        new_intervals << Interval.new(starts, ends)
        intervals2 = (new_intervals + temp_intervals).map(&:dup)

        i += 1
    end
    new_intervals
end
