require 'rspec/core/rake_task'
require 'sinatra/activerecord'
require './app'

RSpec::Core::RakeTask.new :spec

task default: [:spec]

DB_ENV ||= 'development'
connection_details = YAML::load(File.open('./config/database.yml'))
ActiveRecord::Base.establish_connection(connection_details[DB_ENV])
DB_ENV ||= 'test'
connection_details = YAML::load(File.open('./config/database.yml'))
ActiveRecord::Base.establish_connection(connection_details[DB_ENV])
DB_ENV ||= 'production'
connection_details = YAML::load(File.open('./config/database.yml'))
ActiveRecord::Base.establish_connection(connection_details[DB_ENV])

require 'sinatra/activerecord/rake'