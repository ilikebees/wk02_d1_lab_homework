class SportsTeam
  attr_reader :name, :players
  attr_accessor :coach, :points

  def initialize(name, players, coach, points)
    @name = name
    @players = players
    @coach = coach
    @points = points
  end

  # def name
  #   return @name
  # end
  #
  # def players
  #   return @players
  # end
  #
  # def coach
  #   return @coach
  # end

  def change_coach(new_coach)
    @coach = new_coach
  end

  def add_player(new_player)
    @players << new_player
  end

  def players_in_team(player)
    for person in @players
      if person == player
        return true
      end
    end
    return false
  end
  #
  # def add_point()
  #   return points += 1
  #   if win
  #   end
  # end

end
