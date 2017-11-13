class ChangeAndAddFieldsToStatistics < ActiveRecord::Migration[5.1]
  def change
    remove_column :statistics, :damage_given
    add_column :statistics, :player_1_damage, :integer
    add_column :statistics, :player_2_damage, :integer
  end
end
