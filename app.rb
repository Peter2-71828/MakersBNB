
require 'sinatra'
require 'sinatra/base'
require 'sinatra/activerecord'
require 'sinatra/base'
require 'sinatra/flash'
require './models/user'
require './models/space'
require './models/bookings'
require './models/availability'


class MakersBNB < Sinatra::Base
  enable :sessions

  get '/' do 
    redirect '/login'
  end 
  
  
  get '/login' do
   erb :login
  end

  post '/login' do 
    if User.where(email: params["email"], password: params["password"]).exists?
      session[:user] = (User.find_by email: params["email"])
      redirect '/spaces'
    else
      User.create(name: params["name"], email: params["email"], password: params["password"] )
      session[:user] = (User.find_by email: params["email"])
      redirect '/spaces'
    end 
   end 

  get '/spaces' do
    @message = "Welcome #{session[:user].name}"
    p @message
    p session[:user].id 
    @space = Space.all
    erb :index
   end

  get '/spaces/info' do 
    @space = Space.find_by id: params["space_id"]
    erb :details
  end 

  post '/spaces/info' do 
    Bookings.create(start_date: params["start_date"], end_date: params["end_date"], users_id: session[:user].id, spaces_id: params["space_id"])
    
    redirect '/spaces/confirmation'
  end 

  get '/spaces/confirmation' do 
    erb :confirmation
  end 

  get '/new_space' do 
    erb :new_space
  end 

  post '/new_space' do
    p Space.create(name: params["name"], description: params["description"], price_per_night: params["price_per_night"], date: params["date"], users_id: session[:user].id)
    redirect '/spaces'
  end 


  run! if app_file == $0
end