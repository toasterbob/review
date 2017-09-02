
class Employee
  attr_accessor :salary


  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
    boss.employees << self
  end

  def bonus(multiplier)
    bonus = (salary) * multiplier
  end

end

class Manager < Employee
  attr_accessor :salary, employees

  def initialize(name, title, salary, boss, employees)
    super(name, title, salary, boss)
    @employees = employees
  end

  def bonus(multiplier)
    total = 0
    employees.each do |emp|
      if emp.employees
        total += emp.bonus(multiplier)
      end
      total += emp.salary
    end
    total
  end
end

if __FILE__ == $PROGRAM_NAME

end 
