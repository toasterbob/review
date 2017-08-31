def sqrt(num)
  unless num >= 0
    raise ArgumentError.new "Cannot take sqrt of negative number"
  end

  # code to calculate square root...
  puts Math.sqrt(num)
end

def main
  # run the main program in a loop
  while true
    # get an integer from the user
    puts "Please input a number"
    num = gets.chomp
    p num
    break if num == "q"
    num = num.to_i

    begin
      sqrt(num)
    rescue ArgumentError => e
      puts "Couldn't take the square root of #{num}"
      puts "Error was: #{e.message}"
    end
  end
end

# begin
#   a_dangerous_operation
# rescue StandardError => e
#   puts "Something went wrong: #{e.message}"
# ensure
#   puts "No matter what, make sure to execute this!"
# end

# f = File.open
# begin
#   f << a_dangerous_operation
# ensure
#   # must. close. file.
#   f.close
# end

def prompt_name
  puts "Please input a name:"
  # split name on spaces
  name_parts = gets.chomp.split

  if name_parts.count != 2
    raise "Uh-oh, finnicky parsing!"
  end

  name_parts
end

def echo_name
  begin
    fname, lname = prompt_name

    puts "Hello #{fname} of #{lname}"
  rescue
    puts "Please only use two names."
    retry
    # The retry keyword will cause Ruby to repeat the begin block from
    # the beginning. It is useful for "looping" until an operation completes
    # successfuly.
  end
end

if __FILE__ == $PROGRAM_NAME
  # main
  echo_name
end
