class ChangeFieldsInGames < ActiveRecord::Migration[5.1]
  def change
    remove_column :games, :player_2
    rename_column :games, :player_1, :winner
  end
end
