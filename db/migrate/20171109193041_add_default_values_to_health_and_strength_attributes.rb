class AddDefaultValuesToHealthAndStrengthAttributes < ActiveRecord::Migration[5.1]
  def change
    change_column :players, :health, :integer, default: 100
    change_column :players, :strength, :integer, default: 100
  end
end
