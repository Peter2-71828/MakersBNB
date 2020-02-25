require 'sinatra/base'
# require './lib/player'


class MakersBNB < Sinatra::Base


  get '/' do
    erb :index
  end

  get '/login' do 
    erb :login
    # $name = params[:name]
  end 

  run! if app_file == $0
end
