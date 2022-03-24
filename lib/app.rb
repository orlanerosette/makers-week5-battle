require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'


class Battle < Sinatra::Base

  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/names' do
    session[:first_player]  = params[:first_player]
    session[:second_player]  = params[:second_player]
    redirect '/play'
  end

  get '/play' do
    @first_player = session[:first_player]
    @second_player = session[:second_player]
    @first_player_hit_points = 5
    @second_player_hit_points = 7
    erb :play
  end

  post '/attack' do
    @first_player = session[:first_player]
    @second_player = session[:second_player]
    erb :attack_confirmation
  end

  run! if app_file == $0
end
