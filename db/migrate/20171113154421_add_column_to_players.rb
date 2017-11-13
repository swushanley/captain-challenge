class AddColumnToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :damage, :integer, default: 0
  end
end
