class Building
  attr_reader :number, :name, :apt_list

  def initialize(number, name)
    @number = number 
    @name = name
    @apt_list = []
  end

  def add_apartment(apt)
    @apt_list << apt
  end
end