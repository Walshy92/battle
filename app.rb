require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'
require 'pry'

class Battle < Sinatra::Base
  enable :sessions


  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    binding.pry
    @game = $game
    erb :play
  end

  post '/attack' do
    @game = $game
    @game.attack
    @game.switch_turns
    redirect '/play'
  end


  run! if app_file == $0
end
