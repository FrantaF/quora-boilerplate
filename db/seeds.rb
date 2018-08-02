require_relative '../models/user'
require_relative '../models/question'
require_relative '../models/answer'
require_relative '../models/vote'

user1 = User.new(:name => "1User", :email => "1email", :password => "pswd")
user2 = User.new(:name => "2User", :email => "2email", :password => "pswd")
user3 = User.new(:name => "3User", :email => "3email", :password => "pswd")
user4 = User.new(:name => "4User", :email => "4email", :password => "pswd")
user5 = User.new(:name => "5User", :email => "5email", :password => "pswd")
user6 = User.new(:name => "6User", :email => "6email", :password => "pswd")
user7 = User.new(:name => "7User", :email => "7email", :password => "pswd")
user8 = User.new(:name => "8User", :email => "8email", :password => "pswd")

user1.save
user2.save
user3.save
user4.save
user5.save
user6.save
user7.save
user8.save

que1 = Question.new(:user_id => user1.id, :content => "1Question")
que2 = Question.new(:user_id => user2.id, :content => "2Question")
que3 = Question.new(:user_id => user3.id, :content => "3Question")
que4 = Question.new(:user_id => user4.id, :content => "4Question")

que1.save
que2.save
que3.save
que4.save

answ1 = Answer.new(:user_id => user1.id, :question_id => que1.id, :content => "1Answer")
answ2 = Answer.new(:user_id => user2.id, :question_id => que1.id, :content => "2Answer")
answ3 = Answer.new(:user_id => user3.id, :question_id => que1.id, :content => "3Answer")
answ4 = Answer.new(:user_id => user4.id, :question_id => que2.id, :content => "4Answer")
answ5 = Answer.new(:user_id => user5.id, :question_id => que3.id, :content => "5Answer")
answ6 = Answer.new(:user_id => user6.id, :question_id => que4.id, :content => "6Answer")

answ1.save
answ2.save
answ3.save
answ4.save
answ5.save
answ6.save