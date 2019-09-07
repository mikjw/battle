class Game

  attr_reader :p1, :p2, :players, :current_turn

  def initialize(player1, player2)
    @p1 = player1
    @p2 = player2
    @players = [@p1, @p2]
    @current_turn = 0
  end
  
  def inflict_damage
    @p2.reduce_hp
  end 

  def switch_turn
    if @current_turn == 0
      @current_turn = 1
    else 
      @current_turn = 0
    end 
  end 
end 
