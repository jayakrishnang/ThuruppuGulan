class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
    	t.string :suit, limit: 5
    	t.string :value, limit: 5
    	t.integer :points
    	t.integer :weight
      t.timestamps
    end
  end
end
