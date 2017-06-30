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
    intervals2 = intervals.map(&:dup).sort_by {|arr| arr[0] }
    new_intervals = []
    i = 0
    while i < intervals2.length
        temp_intervals = []
        starts, ends = intervals2[i][0], intervals2[i][1]

        j = i + 1
        while j < intervals2.length
            starts2, ends2 = intervals2[j][0], intervals2[j][1]
            if starts2 < starts && ends2 > ends
                starts = starts2
                ends = ends2
            elsif starts2 >= starts && ends2 <= ends
                #do nothing - it's in the range - just let it die
            elsif starts2 > ends || ends2 < starts #out of range - save it
                temp_intervals << intervals2[j]
            else
                starts = [starts, starts2].min
                ends = [ends, ends2].max
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
  intervals4 = [[2,3],[4,5],[6,7],[8,9],[1,10]]
  intervals5 = [[2,3],[4,6],[5,7],[3,4]]
  p merge([[1,3],[2,6],[8,10],[15,18]])
  p merge(intervals2)
  p merge(intervals3)
  p merge(intervals4)
  p merge(intervals5)
end

######### submission
def merge2(intervals)
    intervals2 = intervals.map(&:dup).sort_by {|arr| arr.start }
    new_intervals = []
    i = 0
    while i < intervals2.length
        temp_intervals = []
        starts, ends = intervals2[i].start, intervals2[i].end

        j = i + 1
        while j < intervals2.length
            starts2, ends2 = intervals2[j].start, intervals2[j].end
            if starts2 < starts && ends2 > ends
                starts = starts2
                ends = ends2
            elsif starts2 >= starts && ends2 <= ends
                #do nothing - it's in the range - just let it die
            elsif starts2 > ends || ends2 < starts #out of range - save it
                temp_intervals << intervals2[j]
            else
                starts = [starts, starts2].min
                ends = [ends, ends2].max
            end
            j += 1
        end

        new_intervals << Interval.new(starts, ends)
        intervals2 = (new_intervals + temp_intervals).map(&:dup)

        i += 1
    end
    new_intervals
end
