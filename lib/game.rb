require_relative 'player.rb'

class Game

  attr_reader :players


  def initialize(player_1_name, player_2_name, player_klass = Player)
    @players = {:player_1 => player_klass.new(player_1_name), :player_2 => player_klass.new(player_2_name)}
    # @player_1 = player_klass.new(player_1_name)
    # @player_2 = player_klass.new(player_2_name)

  end

  def attack(player)
    player.attacked
  end

  def player_1
    self.players[:player_1]
  end

  def player_2
    self.players[:player_2]
  end

end
