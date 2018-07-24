class Team

  attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  # def team_name
  #   return @team_name
  # end
  #
  # def players
  #   return @players
  # end
  #
  # def coach
  #   return @coach
  # end
  #
  # def set_coach(name)
  #   @coach = name
  # end

  def new_player(name)
    @players.push(name)
  end

  def find_player(name)
    return @players.include?(name)
  end

  def team_won(result)
    if result == "Win"
      @points += 1
    end
  end

end
