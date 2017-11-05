class CreateHands < ActiveRecord::Migration[5.1]
  def change
    create_table :hands do |t|
    	t.references :card
    	t.references :player
    	t.references :round
      t.timestamps
    end
  end
end
