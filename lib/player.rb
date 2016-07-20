class Player

  attr_reader :name, :hitpoints

  DEFAULT_HIT_POINTS = 60

  def initialize(name, hitpoints = DEFAULT_HIT_POINTS)
    @name = name
    @hitpoints = hitpoints
  end

  def receive_damage
    @hitpoints -= 10
  end

end
