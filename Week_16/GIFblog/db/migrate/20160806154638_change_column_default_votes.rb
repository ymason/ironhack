class ChangeColumnDefaultVotes < ActiveRecord::Migration[5.0]
  def change
  	change_column :posts, :votes, :integer, :default => 0
  end
end
