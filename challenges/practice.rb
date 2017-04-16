
def StairCase(n)
 stairs = 1
 while stairs <= n
  spaces = n - stairs
     puts "#{" " * spaces}#{"#" * stairs}"
  stairs += 1
 end
end

def summation(numbers)
  numbers.inject(0,:+)
end


if __FILE__ == $PROGRAM_NAME

end

#best asymptotic runtime complexity
#heap sort, bubble sort, selection sort, insertion sort

# Array Sorting Algorithms
# Algorithm	Time Complexity	Space Complexity
#                 Best	       Worst
# Heapsort	      Ω(n log(n))	 O(1)
# Bubble Sort	    Ω(n)	       O(1)
# Insertion Sort	Ω(n)	        O(1)
