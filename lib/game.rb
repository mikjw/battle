class Game

  attr_reader :players

  def initialize(player1, player2)
    @p1 = player1
    @p2 = player2
    @players = [@p1, @p2]
  end
  
  def inflict_damage(player)
    player.reduce_hp
  end 
end
