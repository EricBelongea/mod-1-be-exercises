class Street  
  attr_reader :name, :buildings

  def initialize(name)
    @name = name
    @bloc= []
  end

  def add_building(bldg)
    @bloc << bldg
  end

  def buildings
    buildings = []
    @bloc.each do |bld|
      buildings << bld.name
    end
    buildings.sort
  end

  def number_of_available_apts

  end
end


