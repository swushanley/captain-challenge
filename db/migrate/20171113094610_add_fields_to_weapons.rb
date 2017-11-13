class AddFieldsToWeapons < ActiveRecord::Migration[5.1]
  def change
    add_column :weapons, :power, :integer
    add_column :weapons, :speed, :integer
  end
end
