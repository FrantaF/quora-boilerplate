require_relative '../../config/database.rb'

class AmendQuestions < ActiveRecord::Migration[5.0]
   def change
      remove_column(:answers, :vote_id)      
   end
end
