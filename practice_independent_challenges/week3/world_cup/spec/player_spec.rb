require './lib/player'

RSpec.describe Player do
  before(:each) do
    @player = Player.new({name: "Luka Modric", position: "midfielder"})
  end
  describe '#player existance' do
    it 'call name and position' do
      expect(@player.name).to eq("Luka Modric")
      expect(@player.position).to eq("midfielder")
    end
  end
end