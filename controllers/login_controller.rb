
#login user
post '/login' do
  # byebug      
  if User.find_by(email: params[:user][:email]).try(:authenticate, params[:user][:password]) == false
    redirect '/login'
  else
    user_id = User.find_by(email: params[:user][:email]).id
    session[:user_id] = user_id
    name = User.find_by(email: params[:user][:email]).name
    redirect "/profile/#{user_id}"
  end
end

# Login page
get "/" do    
  erb :"login"
end

get "/login" do    
  erb :"login"
end

#Logout
get "/logout" do
  sign_out
  redirect '/login'
end

