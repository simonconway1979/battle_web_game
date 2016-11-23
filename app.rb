require 'sinatra/base'

class Battle < Sinatra::Base

  get '/names' do
    erb(:index)
  end

  post '/names' do
    p params
    @name = params[:name]
    erb(:index)
  end

  run! if app_file == $0

end
