class Venue
  attr_reader :name, :capacity, :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(name)
    @patrons << name
  end

  def yell_at_patrons
    yell = []
    @patrons.each do |patron|
      yell << patron.upcase
    end
    yell
  end
end
