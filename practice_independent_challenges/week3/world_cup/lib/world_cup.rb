class WorldCup 
  attr_reader :year, :teams

  def initialize(year, teams)
    @year = year
    @teams = teams
  end

  def active_players_by_position(role)
    all_players_by_position = @teams.map do |team|
      next if team.eliminated? == true
      team.players.select do |player|
        player.position == role
      end
    end
    all_players_by_position.compact.flatten
  end
end

