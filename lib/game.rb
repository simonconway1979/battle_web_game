require_relative 'player.rb'

class Game

  attr_reader :players, :turn


  def initialize(player_1_name, player_2_name, player_klass = Player)
    #@players = {:player_1 => player_klass.new(player_1_name), :player_2 => player_klass.new(player_2_name)}
    @players = [player_klass.new(player_1_name), player_klass.new(player_2_name)]
    # @player_1 = player_klass.new(player_1_name)
    # @player_2 = player_klass.new(player_2_name)
    @turn = true

  end

  def attack
    issue_attack
    change_turn
  end

  def player_1
    self.players[0]
  end

  def player_2
    self.players[1]
  end

  def current_player
    if @turn
      players[0]
    else
      players[1]
    end
  end

#private

  def issue_attack
    if @turn
      player_2.attacked
    else
      player_1.attacked
    end
  end

  def change_turn
    @turn = !@turn
  end

end
