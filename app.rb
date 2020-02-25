require 'sinatra'
require 'sinatra/base'
require 'sinatra/activerecord'
require 'sinatra/base'
require 'sinatra/flash'
require './models/user.rb'

class MakersBnB < Sinatra::Base
    get '/' do
        p "????"
      p   @users = User.all
        erb :users_new
    end

    get '/users_new' do
    p  @users = User.all
    end

    post '/users_new' do
        redirect('/users_new')
    end

end
