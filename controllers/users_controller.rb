
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
get "/profile/:id" do 

 if logged_in? == nil
  redirect '/login'
end

@user = User.find(params[:id])
erb :"profile"

end