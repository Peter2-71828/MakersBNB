
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
    @message = "Welcome  #{session[:user]}"
    @space = Space.all
    erb :index
   end

  get '/new_space' do 
    erb :new_space
  end 

  post '/new_space' do
    p Space.create(name: params["name"], description: params["description"], price: params["price"], date: params["date"] )
    redirect '/spaces'
  end 


  run! if app_file == $0
end
