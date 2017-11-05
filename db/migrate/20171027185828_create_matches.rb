class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
    	t.string :name
    	t.integer :first_team_id
    	t.integer :first_team_points
    	t.integer :second_team_id
    	t.integer :second_team_points
    	t.integer :max_bid
    	t.integer :no_of_players
      t.timestamps
    end
  end
end
