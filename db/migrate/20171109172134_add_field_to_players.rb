class AddFieldToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :strength, :integer
  end
end
