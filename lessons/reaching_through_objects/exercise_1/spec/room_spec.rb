require './lib/room'

RSpec.describe Room do 
  it 'can exist and has room names' do
    room = Room.new('bathroom')

    expect(room).to be_instance_of Room
    expect(room.name).to eq('bathroom')
  end
end