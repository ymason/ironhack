class ChangeAmountTypeInBids < ActiveRecord::Migration
  def change
  	change_column(:bids, :amount, :integer)
  end
end
