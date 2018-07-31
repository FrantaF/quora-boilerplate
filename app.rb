require_relative './config/init.rb'
require 'sinatra/base'
set :run, true

# class App < Sinatra::Base

  # Login page
  get "/" do    
    erb :"login"
  end

  get "/login" do    
    erb :"login"
  end

  post '/login' do        
    p params[:user]
    if User.find_by(email: params[:user][:email]).try(:authenticate, params[:user][:password]) == false 
      redirect '/login'
    else
      redirect '/profile'      
    end
  end

  #registration page
  get "/registration" do    
    erb :"registration"
  end


  post '/register' do
    user = User.new(params[:user])     
    user.save
    #user = User.new(:name => "FINAL USER", :email => "email", :password => "password", :password_digest => "password")
    if user.save
      redirect '/login' 
    else
      redirect '/registration'
    end  

  end

  #Profile page
  get "/profile" do    
    @display = User.last.email
    erb :"profile"
  end


  

