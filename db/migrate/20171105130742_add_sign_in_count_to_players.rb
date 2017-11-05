class AddSignInCountToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :sign_in_count, :integer, default: 0
  end
end
