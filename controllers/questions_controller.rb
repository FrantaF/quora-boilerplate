
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

post '/answer' do    
   current_user
   answer = Answer.new(:user_id => @current_user.id, :question_id => params[:user][:question_id], :content => params[:user][:answer])
   answer.save      
   redirect "/questions"
end

post "/delete_answer" do   
   answer = Answer.find(params[:user][:delete_answer_id])
   answer.delete   
   redirect "/questions"
end

post "/delete_question" do
   question = Question.find(params[:user][:delete_question_id])
   question.delete   
   redirect "/questions"

end

