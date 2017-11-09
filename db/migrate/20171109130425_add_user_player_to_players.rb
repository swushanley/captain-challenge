class AddUserPlayerToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :user_player, :boolean
  end
end
