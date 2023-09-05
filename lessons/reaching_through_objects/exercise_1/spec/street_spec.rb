require './lib/room'
require './lib/apartment'
require './lib/building'
require './lib/street'

RSpec.describe Street do
  it 'can have a name' do
    street = Street.new("Adlington Road")

    expect(street).to be_instance_of Street
    expect(street.name).to eq("Adlington Road")
  end

  it 'can have building on the street' do
    street = Street.new("Adlington Road")

    bldg1 = Building.new("123", "way")

    street.add_building(bldg1)

    expect(street.buildings).to eq(["way"])
  end

  it 'list aphebetically name of buildings on street' do
    street = Street.new("Adlington Road")

    aplha = Building.new("234", "Sullicvans")
    charlie = Building.new("354", "Edith")
    golf = Building.new("987", "Ekot")

    street.add_building(aplha)
    street.add_building(charlie)
    street.add_building(golf)

    expect(street.buildings).to eq(["Edith", "Ekot", "Sullicvans"])
  end

 xit 'will know if apts are rented' do
    street = Street.new("Adlington Road")

    aplha = Building.new("234", "Sullicvans")
    charlie = Building.new("354", "Edith")
    golf = Building.new("987", "Ekot")

    street.add_building(aplha)
    street.add_building(charlie)
    street.add_building(golf)

    expect(street.number_of_available_apts).to eq(3)
  end
end