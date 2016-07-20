class Player

  attr_reader :name, :hitpoints
  
  def initialize(name)
    @name = name
    @hitpoints = 60
  end

  def reduce_hitpoints
    @hitpoints -= 10
  end

end
