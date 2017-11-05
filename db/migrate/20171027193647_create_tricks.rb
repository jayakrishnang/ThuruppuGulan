class CreateTricks < ActiveRecord::Migration[5.1]
  def change
    create_table :tricks do |t|
    	t.references :round
    	t.integer :first_player_id
    	t.integer :winner_id
    	t.boolean :is_cut
      t.timestamps
    end
  end
end
