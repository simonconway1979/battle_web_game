class Player

attr_reader :name, :game
attr_accessor :health
DEFAULT_NAME = "player"
DEFAULT_HEALTH = 100
HIT_DAMAGE = 20

  def initialize(name = DEFAULT_NAME, health = DEFAULT_HEALTH, game_klass = Game)
    @name = name
    @health = health
    @game = game_klass.new
  end

  def reduce_life
    self.health -= HIT_DAMAGE
  end

end
