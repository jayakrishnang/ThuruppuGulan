class CreateMatchPlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :match_players do |t|
    	t.references :team
    	t.references :player
    	t.references :match
    	t.integer :order
      t.timestamps
    end
  end
end
