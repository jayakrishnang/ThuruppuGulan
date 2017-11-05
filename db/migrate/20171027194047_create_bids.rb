class CreateBids < ActiveRecord::Migration[5.1]
  def change
    create_table :bids do |t|
    	t.references :player
    	t.references :round
    	t.integer :bid_point
    	t.string :suit, limit: 10
    	t.string :qualifier
      t.timestamps
    end
  end
end
