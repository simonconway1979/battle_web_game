require 'sinatra/base'

class Battle < Sinatra::Base

  get '/player_1' do
    @player_1 = params[:name]
    erb(:index)
  end

  #run! if app_file == $0

end
