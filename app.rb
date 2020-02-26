require 'sinatra/base'
require './lib/space'


class MakersBNB < Sinatra::Base


  get '/' do
  
    erb :index
  end

  get '/login' do 
    erb :login
  end 

  post '/login' do 
    $name = params[:name]
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
    Space.new(space_name, description, price)
    redirect '/'
  end 

  run! if app_file == $0
end
