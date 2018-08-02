#login user
post '/login' do      
  if User.find_by(email: params[:user][:email]).try(:authenticate, params[:user][:password]) == false
    redirect '/login'
  else
    user_id = User.find_by(email: params[:user][:email]).id.to_s
    session[:user_id] = user_id
    name = User.find_by(email: params[:user][:email]).name
    redirect '/profile?id='"#{user_id}"
  end
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

#Logout
get "/logout" do
  sign_out
  redirect '/login'
end

#Profile page
get "/profile" do 

  if logged_in? == nil
    redirect '/login'
  end

  erb :"profile"

end

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