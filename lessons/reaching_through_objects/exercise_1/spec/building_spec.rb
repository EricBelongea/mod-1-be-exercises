require './lib/room'
require './lib/apartment'
require './lib/building'

RSpec.describe Building do
  it 'has a number and name' do
    building = Building.new("623", "Savills Apartment Building")

    expect(building).to be_instance_of Building
    expect(building.name).to eq("Savills Apartment Building")
    expect(building.number).to eq("623")
  end

  it 'can contain apts' do
    building = Building.new("623", "Savills Apartment Building")

    apt_1 = Apartment.new
    apt_2 = Apartment.new
    apt_5 = Apartment.new
  
    building.add_apartment(apt_1)
    building.add_apartment(apt_2)
    building.add_apartment(apt_5)

    expect(building.apt_list).to eq([apt_1, apt_2, apt_5])
  end
end