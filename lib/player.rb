class Player
  DEFAULT_HP = 100
  attr_reader :name, :hp
  
  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  # def inflict_damage(player)
  #   player.reduce_hp
  # end 

  def reduce_hp
    @hp -= 10
  end

end
