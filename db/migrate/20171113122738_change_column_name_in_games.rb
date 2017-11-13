class ChangeColumnNameInGames < ActiveRecord::Migration[5.1]
  def change
    remove_column :games, :winner
  end
end
