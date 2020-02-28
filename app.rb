
require 'sinatra'
require 'sinatra/base'
require 'sinatra/activerecord'
require 'sinatra/base'
require 'sinatra/flash'
require './models/user'
require './models/space'


class MakersBNB < Sinatra::Base
  enable :sessions

  get '/' do
   p  @space = Space.all
  
    erb :index
  end

  get '/login' do 
    
    erb :login
  end 

  post '/login' do 
  if Users.none
      redirect '/login'
  else
   p Users.create(name: params["name"], email: params["email"], password: params["password"] )
    redirect '/'
  end 
end

  get '/new_space' do 
    erb :new_space
  end 

  post '/new_space' do
    
  if Space.create(name: params["name"], description: params["description"], price_per_night: params["price"], date: params["date"] ).include?(" ")
    
  else
    p Space.create(name: params["name"], description: params["description"], price_per_night: params["price"], date: params["date"] )
    redirect '/'
          
  end 
end


  run! if app_file == $0
end
