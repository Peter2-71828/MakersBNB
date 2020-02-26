require 'sinatra'
require 'sinatra/base'
require 'sinatra/activerecord'
require 'sinatra/base'
require 'sinatra/flash'
require './models/user'

class MakersBnB < Sinatra::Base

  enable :sessions
  

  get '/' do
      p   @users = User.all
        erb :users_new
  end


  post '/users/new' do
  p  User.create(name: params["name"], email: params["email"], password: params["password"])
    redirect '/users/new'
  end

  get 'users/new' do
    erb :users_new
  end

  
end
