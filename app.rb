require 'sinatra/base'
require_relative 'lib/game.rb'


class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(params[:player1], params[:player2])
    redirect to('/play')
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.turn ? @game.attack(@game.player2) : @game.attack(@game.player1)
    @game.switch_turn
    erb(:attack)
  end


  run! if app_file == $0

end
