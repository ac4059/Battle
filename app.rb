require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  post "/names" do
    session[:playeronename] = params[:playeronename]
    session[:playertwoname] = params[:playertwoname]
    redirect '/play'
  end

  get "/play" do
    @playeronename = session[:playeronename]
    @playertwoname = session[:playertwoname]
    erb :play
  end

  get "/attack" do
    @playeronename = session[:playeronename]
    @playertwoname = session[:playertwoname]
    erb :attack
  end

  run! if app_file == $0
end
