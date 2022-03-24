require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require 'player'


class Battle < Sinatra::Base

  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/names' do
    $first_player = Player.new(params[:first_player])
    $second_player = Player.new(params[:second_player])
    redirect '/play'
  end

  get '/play' do
    @first_player = $first_player
    @second_player = $second_player
    erb :play
  end

  post '/attack' do
    @first_player = $first_player
    @second_player = $second_player
    @second_player.attacked
    erb :attack_confirmation
  end

  run! if app_file == $0
end
