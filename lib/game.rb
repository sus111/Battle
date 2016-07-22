class Game

attr_reader :player_1, :player_2, :player_1_turn, :game_over

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @player_1_turn = true
    #@game_over = false
  end

  def attack
    @player_1_turn ? @player_2.reduce_points : @player_1.reduce_points
  end

  def switch_turns
    @player_1_turn ^= true
  end

  def end_game
    @player_1.player_dead? || @player_2.player_dead?
  end

end
