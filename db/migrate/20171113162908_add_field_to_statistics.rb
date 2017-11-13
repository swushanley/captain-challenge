class AddFieldToStatistics < ActiveRecord::Migration[5.1]
  def change
    add_column :statistics, :game_name, :string
  end
end
