require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  # enable :sessions

  get "/" do
    erb :index
  end

  post "/names" do
    $game = Game.new(Player.new(params[:playeronename]), Player.new(params[:playertwoname]))
    redirect '/play'
  end

  get "/play" do
    @playerone = $game.playerone
    @playertwo = $game.playertwo
    erb :play
  end

  get "/attack" do
    @playerone = $game.playerone
    @playertwo = $game.playertwo
    $game.attack(@playertwo)
    erb :attack
  end

  run! if app_file == $0
end
