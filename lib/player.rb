class Player

DEFAULT_HITPOINTS = 60

attr_reader :name, :hitpoints, :dead

  def initialize(name, hitpoints = DEFAULT_HITPOINTS)
    @name = name
    @hitpoints = hitpoints
    @dead = false
  end

  def reduce_points
    @hitpoints -= 10
  end

end
