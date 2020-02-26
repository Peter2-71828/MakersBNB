
require 'sinatra'
require 'sinatra/base'
require 'sinatra/activerecord'
require 'sinatra/base'
require 'sinatra/flash'
require './models/user'
require './lib/space'

class MakersBNB < Sinatra::Base
  enable :sessions

  get '/' do
  
    erb :index
  end

  get '/login' do 
    erb :login
  end 

  post '/login' do 
    User.create(name: params["name"], email: params["email"], password: params["password"] )
    # $name = params[:name]
    # $email = params[:email]
    # $password = params[:password]
    redirect '/'
  end 

  get '/new_space' do 
    erb :new_space
  end 

  post '/new_space' do 
    p params
    space_name = params[:space_name]
    p space_name
    description = params[:description]
    price = params[:price]
    dates = params[:dates]
    Space.new(space_name, description, price, dates)
    redirect '/'
  end 

  run! if app_file == $0
end
