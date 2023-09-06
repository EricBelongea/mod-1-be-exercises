require './lib/team'
require './lib/player'

RSpec.describe '#teams' do
  before(:each) do
    @team = Team.new("France")
    @mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    @pogba = Player.new({name: "Paul Pogba", position: "midfielder"}) 
  end
  it 'has a team and elimination' do
    expect(@team.country).to eq("France")
    expect(@team.eliminated?).to be false
  end

  it 'can toggle elimination' do
    @team.eliminated = true
    expect(@team.eliminated?).to be true
  end

  it 'teams have players' do
    expect(@team.players).to eq([])
  end

  it 'teams can sign players' do
    @team.add_player(@mbappe)
    @team.add_player(@pogba)

    expect(@team.players).to eq([@mbappe, @pogba])
  end

  it 'lists players by position' do
    @team.add_player(@mbappe)
    @team.add_player(@pogba)

    expect(@team.players_by_position("forward")).to eq([@mbappe])
    expect(@team.players_by_position("defender")).to eq([])
  end
end