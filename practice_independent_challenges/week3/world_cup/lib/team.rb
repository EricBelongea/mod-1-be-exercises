class Team
  attr_reader :country
  attr_accessor :eliminated, :players

  def initialize(country)
    @country = country
    @eliminated = false
    @players = []
  end

  def eliminated?
    @eliminated
  end

  def add_player(name)
    @players << name
  end

  def players_by_position(role)
    position_players = @players.select { |player| player.position == role }
  end
end