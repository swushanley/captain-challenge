class RemoveWeaponFieldFromPlayers < ActiveRecord::Migration[5.1]
  def change
    remove_column :players, :weapon
  end
end
