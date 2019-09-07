class Game
  attr_reader :players, :current_turn

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = 0
  end

  def p1
    players[0]
  end

  def p2
    players[1]
  end

  def inflict_damage
    p2.reduce_hp
  end

  def switch_turn
    @current_turn.zero? ? @current_turn = 1 : @current_turn = 0
  end 
end
