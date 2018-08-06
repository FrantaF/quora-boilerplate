require_relative './config/init.rb'
require_relative 'models/user'
require_relative 'helpers/user'
require_relative 'controllers/questions_controller'
require_relative 'controllers/login_controller'
require_relative 'controllers/users_controller'
require_relative 'models/question'

require 'time_difference'
require 'sinatra/base'
set :run, true
enable :sessions

after do
  ActiveRecord::Base.clear_active_connections!
end













