require_relative '../models/skill.rb'

class SkillInventoryApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/skills' do
    erb :index
  end
end

