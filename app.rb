require_relative './config/init.rb'
require_relative 'models/user'
require_relative 'helpers/user'
require_relative 'controllers/questions_controller'
require_relative 'controllers/users_controller'
require_relative 'models/question'

require 'sinatra/base'
set :run, true
enable :sessions




get '/answers' do 
   erb :'answers'
end









