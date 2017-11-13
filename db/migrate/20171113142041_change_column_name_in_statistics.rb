class ChangeColumnNameInStatistics < ActiveRecord::Migration[5.1]
  def change
    add_column :statistics, :player_2_id, :integer
    rename_column :statistics, :player_id, :player_1_id
  end
end
