require './lib/world_cup'
require './lib/team'
require './lib/player'

RSpec.describe '#World Cup' do
  before(:each) do
    @france = Team.new("France")
    @mbappe = Player.new({name: "Kylian Mbappe", position: "forward"}) 
    @pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
    @croatia = Team.new("Croatia")
    @modric = Player.new({name: "Luka Modric", position: "midfielder"})
    @vida = Player.new({name: "Domagoj Vida", position: "defender"})
    @france.add_player(@mbappe)
    @france.add_player(@pogba)
    @croatia.add_player(@modric)
    @croatia.add_player(@vida)
  end
  describe '#can host a world cup' do
    it 'has a year and teams' do
      world_cup = WorldCup.new(2018, [@france, @croatia])
      
      expect(world_cup.year).to eq(2018)
      expect(world_cup.teams).to eq([@france, @croatia])
    end

    it 'can list all midfielders' do
      world_cup = WorldCup.new(2018, [@france, @croatia])

      expect(world_cup.active_players_by_position("midfielder")).to eq([@pogba, @modric])
    end

    it 'eliminating teams will update players by position' do
      world_cup = WorldCup.new(2018, [@france, @croatia])

      @croatia.eliminated = true

      expect(@croatia.eliminated?).to be true
      expect(world_cup.active_players_by_position("midfielder")).to eq([@pogba])

    end
  end
end