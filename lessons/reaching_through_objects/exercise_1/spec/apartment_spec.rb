require './lib/room'
require './lib/apartment'

RSpec.describe Apartment do
  it 'can exist' do
    apartment = Apartment.new

    expect(apartment).to be_instance_of Apartment
  end

  it 'can be rented' do
    apartment = Apartment.new

    expect(apartment.is_rented?).to be false

    apartment.rent 

    expect(apartment.is_rented?).to be true
  end

  it 'apartments have rooms' do
    apartment = Apartment.new
    bathroom = Room.new('bathroom')
    laundry = Room.new("laundry")
    kitchen = Room.new("kitchen")
    bedroom = Room.new("bedroom")
    
    apartment.add_room(bathroom)
    apartment.add_room(laundry)
    apartment.add_room(kitchen)
    apartment.add_room(bedroom)

    expect(apartment.rooms).to eq([bathroom, laundry, kitchen, bedroom])
  end

  it 'can only have up to four rooms' do
    apartment = Apartment.new
    bathroom = Room.new('bathroom')

    apartment.add_room(bathroom)
    apartment.add_room(Room.new("laundry"))
    apartment.add_room(Room.new("kitchen"))
    apartment.add_room(Room.new("bedroom"))

    expect(apartment.rooms.count).to eq(4)

    apartment.add_room(Room.new("office"))
    expect(apartment.rooms.count).to eq(4)
  end

  it 'can list rooms alphabetically' do
    apartment = Apartment.new
    bathroom = Room.new('bathroom')

    apartment.add_room(bathroom)
    apartment.add_room(Room.new("laundry"))
    apartment.add_room(Room.new("kitchen"))
    apartment.add_room(Room.new("bedroom"))

    expect(apartment.list_rooms_by_name_alphabetically).to eq(["bathroom", "bedroom", "kitchen", "laundry"])
  end
end