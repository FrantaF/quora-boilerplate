require_relative '../../config/database.rb'

class CreateUsers < ActiveRecord::Migration[5.0]
   def change
      # HINT: checkout ActiveRecord::Migration.create_table
      create_table :users do |t|

         t.string :name            
         t.string :email
         t.string :password    
         t.string :password_digest
         t.timestamps

         t.references :user, index: true
         t.references :question, index: true
      end
   end
end
