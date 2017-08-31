# Inheritance and DRY

# class Minnow
#   def eat
#     puts "eat eat eat"
#   end
# end
#
# class Shark
#   def eat
#     puts "eat eat eat"
#   end
# end

class Fish
  def eat
    puts "eat eat eat"
  end
end

class Minnow < Fish
end

class Shark < Fish
end




class Employee
  def wage
    20_000
  end
end

class Manager < Employee
  def wage
    50_000
  end
end

class CEO < Manager
  def wage
    1_000_000
  end
end

# calculate the total salary of many employees
def total_salary(employees)
  total = 0
  employees.each do |employee|
    # Don't know/care what kind of `Employee` (regular, Manager,
    # or CEO) this is. We can treat them all the same.
    total += employee.wage
  end
  total 
end

if __FILE__ == $PROGRAM_NAME
  e = Employee.new
  m = Manager.new
  c = CEO.new
  e2 = Employee.new
  p total_salary([e,m,c,e2])
end
