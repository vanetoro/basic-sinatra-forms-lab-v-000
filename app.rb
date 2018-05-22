require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  get '/team' do
    @team = params[:team_name]
    @coach = params[:coach]
    @pg = params[:point_gaurd]
    @sg = params[:shooting_gaurd]
    @sf = params[:small_forward]
    @pf = params[:poward_forward]
    @center = params[:center]
      erb :team
  end
end
