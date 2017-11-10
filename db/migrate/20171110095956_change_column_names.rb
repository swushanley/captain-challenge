class ChangeColumnNames < ActiveRecord::Migration[5.1]
  def change
    rename_column :games_players, :category_id, :game_id
    rename_column :games_players, :product_id, :player_id
  end
end
