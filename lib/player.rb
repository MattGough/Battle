class Player

  DEFAULT_HIT_POINTS = 100

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def attack(other_player)
    other_player.reduce_points
  end

  def reduce_points
    @hit_points -= 10
  end

  attr_reader :name, :hit_points

end
