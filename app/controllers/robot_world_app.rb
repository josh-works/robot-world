require_relative '../models/robot.rb'

class RobotWorldApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/' do
    "<h1> try <pre>/robots</pre> instead! </h1>"
  end

  get '/robots' do
    @robots = Robot.all
    erb :index
  end

  get '/robots/new' do
    erb :new
  end

  post '/robots' do
    robot = Robot.new(params[:robot])
    robot.save
    redirect '/robots'
  end

  get 'robots/:id' do
    "hello world"
    binding.pry
    # @robot = Robot.find(params[:id])
    # erb :show
  end

  get 'robots/:id/edit' do

  end

  put '/robots/:id' do

  end

  delete '/robots/:id' do

  end


end
