require_relative './config/init.rb'
require_relative 'models/user'
require_relative 'helpers/user'
require 'sinatra/base'
set :run, true
enable :sessions

 # Login page
 get "/" do    
  erb :"login"
end

get "/login" do    
  erb :"login"
end

#registration page
get "/registration" do    
  erb :"registration"
end

#Profile page
get "/profile" do 

  if logged_in? == nil
    redirect '/login'
  end

  erb :"profile"

end

#Logout
get "/logout" do
  sign_out
  redirect '/login'
end







