#!/bin/ruby

def solve(grades)
    result = []
    grades.each do |grade|
        if grade < 38
            result << grade
        elsif (grade + 1) % 5 == 0
            result << grade + 1
        elsif (grade + 2) % 5 == 0
            result << grade + 2
        else
            result << grade
        end
    end
    result
end

n = gets.strip.to_i
grades = Array.new(n)
for grades_i in (0..n-1)
    grades[grades_i] = gets.strip.to_i
end
result = solve(grades)
print result.join("\n")
