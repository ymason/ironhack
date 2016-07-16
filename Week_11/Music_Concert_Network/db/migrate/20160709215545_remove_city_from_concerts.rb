class RemoveCityFromConcerts < ActiveRecord::Migration
  def change
  	remove_column :concerts, :city
  	add_column :concerts, :city, :reference
  end
end
