class Game

attr_reader :player_1, :player_2, :player_1_turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @player_1_turn = true
  end

  def attack
    if @player_1_turn
      @player_2.receive_damage
    elsif !@player_1_turn
      @player_1.receive_damage
    end
    change_turn
  end

  def change_turn
    @player_1_turn ^= true
  end

end
