class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.string :amount
      t.references :user, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
