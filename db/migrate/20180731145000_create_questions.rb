require_relative '../../config/database.rb'

class CreateQuestions < ActiveRecord::Migration[5.0]
   def change
      # HINT: checkout ActiveRecord::Migration.create_table
      create_table :questions do |t|
         t.belongs_to :user, index: true
         t.string :content        

         t.timestamps
      end
   end
end
