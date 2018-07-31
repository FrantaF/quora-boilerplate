require_relative '../../config/database.rb'

class CreateAnswers < ActiveRecord::Migration[5.0]
   def change
      # HINT: checkout ActiveRecord::Migration.create_table
      create_table :answers do |t|

         t.string :content
         t.timestamps

         add_reference :answers, :questions, index: true
      end
   end
end
