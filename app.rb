require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  # enable :sessions

  get "/" do
    erb :index
  end

  post "/names" do
    $player_1 = Player.new(params[:playeronename])
    $player_2 = Player.new(params[:playertwoname])
    $game = Game.new
    redirect '/play'
  end

  get "/play" do
    @playerone = $player_1
    @playertwo = $player_2
    erb :play
  end

  get "/attack" do
    @playerone = $player_1
    @playertwo = $player_2
    @game = $game 
    @game.attack(@playertwo)
    erb :attack
  end

  run! if app_file == $0
end
