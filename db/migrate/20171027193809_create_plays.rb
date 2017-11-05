class CreatePlays < ActiveRecord::Migration[5.1]
  def change
    create_table :plays do |t|
    	t.references :trick
    	t.references :player
    	t.references :card
    	t.integer :play_order
      t.timestamps
    end
  end
end
