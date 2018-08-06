require_relative '../../config/database.rb'

class CreateAnswers < ActiveRecord::Migration[5.0]
   def change
      # HINT: checkout ActiveRecord::Migration.create_table
      create_table :answers do |t|
         t.belongs_to :user, index: true
         t.belongs_to :question, index: true
         t.string :content
         t.timestamps
         
      end
   end
end
