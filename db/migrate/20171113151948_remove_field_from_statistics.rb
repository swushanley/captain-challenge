class RemoveFieldFromStatistics < ActiveRecord::Migration[5.1]
  def change
    remove_column :statistics, :damage_received
  end
end
