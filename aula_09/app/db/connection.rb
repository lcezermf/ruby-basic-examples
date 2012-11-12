require 'active_record'
require 'yaml'

db_configs = YAML::load(File.open('db/database.yml'))
ActiveRecord::Base.establish_connection(db_configs)
