class AddDefaultValueToUserPlayerAttribute < ActiveRecord::Migration[5.1]
  def change
    change_column :players, :user_player, :boolean, default: true
  end
end
