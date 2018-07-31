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

