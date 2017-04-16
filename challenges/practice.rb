
def StairCase(n)
 stairs = 1
 while stairs <= n
  spaces = n - stairs
     puts "#{" " * spaces}#{"#" * stairs}"
  stairs += 1
 end
end


if __FILE__ == $PROGRAM_NAME

end

#best asymptotic runtime complexity
#heap sort, bubble sort, selection sort, insertion sort
