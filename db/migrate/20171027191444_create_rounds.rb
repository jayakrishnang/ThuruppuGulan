class CreateRounds < ActiveRecord::Migration[5.1]
  def change
    create_table :rounds do |t|
    	t.references :match
    	t.integer :bidder_id
    	t.integer :final_bid
    	t.string :trump_suit, limit: 10
    	t.integer :points_scored
    	t.integer :winner_id
    	t.integer :round_points
    	t.integer :dealer_id
      t.timestamps
    end
  end
end
