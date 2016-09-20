require 'sqlite3'

class Skill
  def initialize(skill_params)
    @database = SQLite3::Database.new('db/skill_inventory_development.db')
    @database.results_as_hash = true
  end
end
