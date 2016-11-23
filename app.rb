require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    p params
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb(:play)
  end

  get '/play' do
    erb(:play)
  end


  run! if app_file == $0

end