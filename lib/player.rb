require_relative 'game'

class Player

  attr_reader :name, :game
  attr_accessor :hitpoints

  def initialize(name, game_klass=Game)
    @name = name
    @hitpoints = 60
    @game = game_klass.new
  end

  def attacked
    self.hitpoints -= 10
  end

end
