
post '/register' do
 user = User.new(params[:user])     
 user.save

 if user.save
  redirect '/login' 
else
  redirect '/registration'
end  

end

get "/registration" do    
  erb :"registration"
end


#Profile page
get "/profile" do 

  if logged_in? == nil
    redirect '/login'
 end
 current_user
 erb :"profile"

end