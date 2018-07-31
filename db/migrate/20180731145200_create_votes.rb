require_relative '../../config/database.rb'

class CreateVotes < ActiveRecord::Migration[5.0]
   def change
      # HINT: checkout ActiveRecord::Migration.create_table
      create_table :votes do |t|

         t.integer :vote_up        
         t.integer :vote_down        

         t.timestamps
      end
   end
end
