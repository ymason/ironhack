class AddCommentsCounterToConcerts < ActiveRecord::Migration
  def change
    add_column :concerts, :comments_counter, :integer, default: 0
  end
end
