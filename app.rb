require 'sinatra/base'
require_relative 'lib/player.rb'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    $player1_name = params[:player1]
    $player2_name = params[:player2]
    redirect to('/play')
  end

  get '/play' do
    @player1 = $player1_name
    @player2 = $player2_name
    erb(:play)
  end

   get '/attack' do
     @player1 = $player1_name
     @player2 = $player2_name
   erb(:attack)
   end


  run! if app_file == $0

end
