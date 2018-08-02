
get "/questions" do

   if logged_in? == nil
      redirect '/login'
   end

   @questions = Question.all
   @answers = Answer.all

   erb :"questions"

end

post '/questions' do
   # byebug
   current_user
   question = Question.new(:user_id => @current_user.id, :content => params[:user][:question])
   question.save      
   redirect "/questions"
   
end


