class ChangeSuitLimitInCards < ActiveRecord::Migration[5.1]
  def change
  	change_column :cards, :suit, :string, :limit => 10
  end
end
