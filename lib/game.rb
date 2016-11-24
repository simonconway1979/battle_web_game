require_relative "player.rb"


class Game


attr_reader :players, :turn


def initialize(name1, name2, player_klass = Player)
  @players = {player1: player_klass.new(name1),
              player2: player_klass.new(name2)}

  @turn = true

end

def attack(player)
  player.reduce_life
end

def player1
  players[:player1]
end

def player2
  players[:player2]
end

def switch_turn
  @turn = !@turn
end



# def turn
#   turn
# end

end
