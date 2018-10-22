class SportsTeam
  attr_reader :name, :players
  attr_accessor :coach

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
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

end
