require_relative '../../config/database.rb'

class CreateVotes < ActiveRecord::Migration[5.0]
   def change
      # HINT: checkout ActiveRecord::Migration.create_table
      create_table :votes do |t|
         t.belongs_to :user, index: true
         t.belongs_to :answer, index: true
         t.integer :vote  

         t.timestamps
      end
   end
end
