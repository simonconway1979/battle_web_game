class Player

attr_reader :name
attr_accessor :health
DEFAULT_NAME = "player"
DEFAULT_HEALTH = 100
HIT_DAMAGE = 20

  def initialize(name = DEFAULT_NAME, health = DEFAULT_HEALTH)
    @name = name
    @health = health
  end

  def attack(player)
    player.reduce_life
  end

  def reduce_life
    self.health -= HIT_DAMAGE
  end

end
