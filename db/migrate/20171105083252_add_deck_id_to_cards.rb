class AddDeckIdToCards < ActiveRecord::Migration[5.1]
  def change
  	add_column :cards, :deck_id, :integer
  end
end
