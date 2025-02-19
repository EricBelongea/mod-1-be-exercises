require 'employee'

class Manager < Employee
  attr_reader :base_salary, :per_team_rate, :departments
  def initialize(name, id, base_salary)
    @base_salary = base_salary
    @bonus = 0
    @per_team_rate = 5
    @departments = []
    super(name, id)
  end

  def add_department(dept)
    @departments << dept
  end

  def benefits
    [:sick_leave, :health_insurance]
  end

end