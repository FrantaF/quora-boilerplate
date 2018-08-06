
get "/questions" do

   if logged_in? == nil
      redirect '/login'
   end

   current_user
   @questions = Question.all
   @answers = Answer.all   
   erb :"questions"

end

post '/questions' do   
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

post "/delete_answer/:id" do   

   #validate deletion rights and delete
   answer = Answer.find(params[:id])
   current_user

   if answer.user_id == current_user.id 
      answer.destroy   
      redirect "/questions"
   end
end

post "/delete_question/:id" do

   #validate deletion rights and delete
   question = Question.find(params[:id])
   current_user   

   if question.user_id == current_user.id
      question.destroy   
      redirect "/questions"
   end
end

post "/vote_up_answer/:id" do 

   #validate whether user has previously voted
   current_user
   question_votes = Vote.where(answer_id: params[:id])
   @votes_count = question_votes.count 
   user_voted = false
   
   
   question_votes.each do |vote|

      if vote.user_id == current_user.id
         vote.update(vote: 1)
         user_voted = true
      end

   end   

   if !user_voted      
      vote = Vote.new(:user_id => current_user.id, :answer_id =>  params[:id], :vote => 1)
      vote.save      
   end

   redirect "/questions"
end


post "/vote_down_answer/:id" do

   #validate whether user has previously voted
   current_user
   question_votes = Vote.where(answer_id: params[:id])
   user_voted = false
   
   
   question_votes.each do |vote|

      if vote.user_id == current_user.id
         vote.update(vote: -1)
         user_voted = true
      end

   end
   

   if !user_voted      
      vote = Vote.new(:user_id => current_user.id, :answer_id =>  params[:id], :vote => -1)
      vote.save
   end

   redirect "/questions"

end

