class Question < ActiveRecord::Base
   belongs_to :user
   has_many :answers, dependent: :destroy  

   validates :content, presence: true
   validates :user_id, presence: true   
   
end



#