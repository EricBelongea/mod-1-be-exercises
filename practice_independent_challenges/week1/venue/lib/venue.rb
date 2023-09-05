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

  def over_capacity
    if @patrons.count > 4
      return true
    else 
      false
    end
  end

  def kick_out
    if @patrons.count <= 4
      return
    else
      until @patrons.count == 4
        @patrons.pop
      end
    end
  end
end
