require_relative '../models/robot.rb'

class RobotWorldApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/' do
    'please go to <pre><a href="/robots">/robots</a></pre> instead '
  end

  get '/robots' do
    erb :index
  end





end
