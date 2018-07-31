require_relative './config/init.rb'
require 'sinatra/base'
set :run, true

# class App < Sinatra::Base
   # Home  page
   get "/" do
    # @name = "Bob Smith"
    erb :"registration"
  end

  get "/" do
    # @name = "Bob Smith"
    erb :"registration"
  end

   #handle login form submision 
   post '/signup' do
     # user = User.new(params[:user])
    # if user.save
    # what should happen if the user is saved?
 # else
    # what should happen if the user keyed in invalid date?
 # end
 redirect '/profile'

end  
   #user profile page
   get "/profile" do
    @name = "Bob Smith"
    erb :"profile"
  end



# end

