
class SportsTeam

attr_accessor :team, :players, :coach, :points

def initialize (team,players,coach,points)
#question for meaning
  @team = team
  @players = players
  @coach = coach
  @points = points

end




def add_player(name)
  @players.push(name)
end

def is_player (name)
  @players.each{|x|return true if x == name}
  return false
end

def add_or_remove_points(boolean)
 boolean ? @points += 1 : @points -= 1
end








end
