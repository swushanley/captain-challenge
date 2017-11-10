class ChangeColumnNamesInGames < ActiveRecord::Migration[5.1]
  def change
    rename_column :games, :winner, :player_1
    rename_column :games, :loser, :player_2
  end
end
