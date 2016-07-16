class RenameCommentCounterInConcerts < ActiveRecord::Migration
  def change
  	rename_column :concerts, :comments_counter, :comment_count
  end
end
