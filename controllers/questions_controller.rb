
post '/question' do
   question = Question.new(:user_id => @current_user, :content => params[:user][:question])
   question.save   
   if question.save 
      redirect "/questions"
   end
end

get "/questions" do
   if logged_in? == nil
      redirect '/login'
   end 

   @question_string = []
   
   questions = Question.all
   questions.each do |question|   
      @question_string.push(render_question("Random User", question.content))
   end
   
   
   erb :"questions"
end

def render_question(author_name, question)
   question_string = '<div class="container" style="margin-top: 30px;">
   <div class="well">
   <div class="media">        
   <div class="media-body">

   <h4 class="media-heading">'"#{question}"'</h4>   

   <p class="text-right">'"#{author_name}"'</p>

   <ul class="list-inline list-unstyled">

   <li><span><i class="glyphicon glyphicon-calendar"></i> 2 days, 8 hours </span></li>
   <li>|</li>

   <span><i class="glyphicon glyphicon-comment"></i> 2 comments</span>
   <li>|</li>
   <li>
   <!-- This will be the voting feature. Content will be sorted in the back-end and then printed out -->
   <span class="glyphicon glyphicon-star"></span>
   <span class="glyphicon glyphicon-star"></span>
   <span class="glyphicon glyphicon-star"></span>
   <span class="glyphicon glyphicon-star"></span>
   <span class="glyphicon glyphicon-star-empty"></span>
   </li>            
   </ul>
   </div>
   </div>
   </div>
   </div>'
   return question_string

end
