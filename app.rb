require_relative './config/init.rb'
require_relative 'models/user'
require_relative 'helpers/user'
require_relative 'controllers/questions_controller'
require_relative 'controllers/login_controller'
require_relative 'controllers/users_controller'
require_relative 'models/question'

require 'time_difference'
require 'sinatra/base'
set :run, true #JUST FOR TESTING! SET IT TO TRUE TO RUN IN BROWSER
enable :sessions



# p Answer.first.question_id
# Question.all.each do |question|
#    p question.user.name
#    p question.id
# end

# Answer.all.each do |answer|
#    p answer.question_id

# end








