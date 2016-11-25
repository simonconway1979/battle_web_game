require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'


class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(params[:player_1_name], params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
      @game = $game
    erb(:play)
  end

  get '/attack_successful' do
    @game = $game
    @game.attack(@game.player_2)
    erb(:attack_successful)
  end

run! if app_file == $0

end
