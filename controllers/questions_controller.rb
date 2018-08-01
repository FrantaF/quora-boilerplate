 
get '/questions' do   
  if logged_in? == nil
    redirect '/login'
 end
 
 erb :"questions"
end