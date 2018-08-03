require_relative '../../config/database.rb'

class AmendVotes < ActiveRecord::Migration[5.0]
   def change
      remove_column(:votes, :vote_up)
      remove_column(:votes, :vote_down)
      add_column(:votes, :vote, :integer)
   end
end
