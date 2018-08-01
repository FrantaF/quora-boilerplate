class User < ActiveRecord::Base
   validates :name, presence: true
   validates :email, presence: true
   validates :email, uniqueness: true
   validates :password, presence: true
   
   has_secure_password
   has_many :votes
   has_many :questions
   has_many :answers

end

#login user
post '/login' do      
   if User.find_by(email: params[:user][:email]).try(:authenticate, params[:user][:password]) == false
      redirect '/login'
   else
      user_id = User.find_by(email: params[:user][:email]).id.to_s
      session[:user_id] = user_id
      name = User.find_by(email: params[:user][:email]).name
      redirect '/profile?id='"#{user_id}"
   end
end

post '/register' do
  user = User.new(params[:user])     
  user.save
    #user = User.new(:name => "FINAL USER", :email => "email", :password => "password", :password_digest => "password")
    if user.save
      redirect '/login' 
   else
      redirect '/registration'
   end  

end

