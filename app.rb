require 'sinatra/base'
require './lib/player.rb'

class Battle < Sinatra::Base
  # enable :sessions

  get "/" do
    erb :index
  end

  post "/names" do
    $player_1 = Player.new(params[:playeronename])
    $player_2 = Player.new(params[:playertwoname])
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
    @playerone.attack(@playertwo)
    erb :attack
  end

  run! if app_file == $0
end
