class AddFieldsToStatistics < ActiveRecord::Migration[5.1]
  def change
    add_column :statistics, :game_id, :integer
    add_column :statistics, :player_id, :integer
    add_column :statistics, :damage_given, :integer
    add_column :statistics, :damage_received, :integer
  end
end
