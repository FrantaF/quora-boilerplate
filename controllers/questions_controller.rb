
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
   
   #display all questions
   questions = Question.all
   questions.each do |question|   
      @question_string.push(render_question("Random User", question.content))

      #display answers to the question
      
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
   <p class="text-right"><a href="#" class="btn btn-default btn-sm"><i class="fa fa-reply"></i>Delete Question</a></p>
   </div>
   </div>   
   '
   return question_string
end

def render_answer(author_name, answer)
   answer_string = '<!-- Answer -->
   <div class="container">
   <article class="row">

   <div class="col-md-8 col-sm-8 col-sm-offset-2">
   <div class="panel panel-default arrow left">
   <div class="panel-heading right">Answer</div>
   <div class="panel-body">
   <header class="text-left">
   <div class="comment-user"><i class="fa fa-user"></i>'"#{author_name}"'</div>
   <time class="comment-date" datetime="16-12-2014 01:05"><i class="fa fa-clock-o"></i> Dec 16, 2014</time>
   </header>
   <div class="comment-post">
   <p>'"#{answer}"'</p>
   </div>
   <p class="text-right"><a href="#" class="btn btn-default btn-sm"><i class="fa fa-reply"></i>Delete answer</a></p>
   </div>
   </div>
   </div>
   </article>
   </div>'
   return answer_string
end

