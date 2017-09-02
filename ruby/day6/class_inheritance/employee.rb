
class Employee
  attr_accessor :salary


  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
    boss.employees << self unless boss.nil?
  end

  def bonus(multiplier)
    bonus = (salary) * multiplier
  end

end

class Manager < Employee
  attr_accessor :salary, :employees

  def initialize(name, title, salary, boss)
    super(name, title, salary, boss)
    @employees = []
  end

  def bonus(multiplier)
    total = 0
    employees.each do |emp|
      if emp.class == Manager
        total += emp.bonus(multiplier)
      end
      total += emp.salary * multiplier
    end
    total
  end
end

if __FILE__ == $PROGRAM_NAME
  ned = Manager.new("Ned", "Founder", 1_000_000, nil)
  darren = Manager.new("Darren", "TA Manager", 78_000, ned)
  shawna = Employee.new("Shawna", "TA", 12_000, darren)
  david = Employee.new("David", "TA", 10_000, darren)

  p ned.bonus(5) # => 500_000
  p darren.bonus(4) # => 88_000
  p david.bonus(3) # => 30_000
end
