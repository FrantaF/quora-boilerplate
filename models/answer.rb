class Answer < ActiveRecord::Base
   belongs_to :question
   belongs_to :user
   has_many :votes

   validates :question_id, presence: true
   validates :user_id, presence: true

end