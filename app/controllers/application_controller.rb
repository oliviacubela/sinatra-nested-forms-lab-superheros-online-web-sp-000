require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    @team = Team.new(params[:team][:name], params[:team][:motto])
    @superhero1 = SuperHero.new(params[:team][:hero][0][:name], params[:team][:hero][0][:power], params[:team][:hero][0][:bio])
    @superhero2 = SuperHero.new(params[:team][:hero][1][:name], params[:team][:hero][1][:power], params[:team][:hero][1][:bio])
    @superhero3 = SuperHero.new(params[:team][:hero][2][:name], params[:team][:hero][2][:power], params[:team][:hero][2][:bio])
    erb :team
    
  end
end
