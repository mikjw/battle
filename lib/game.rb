class Game

  attr_reader :p1, :p2

  def initialize(player1, player2)
    @p1 = player1
    @p2 = player2
  end
  
  def inflict_damage
    @p2.reduce_hp
  end 
end
