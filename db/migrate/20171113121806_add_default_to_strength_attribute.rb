class AddDefaultToStrengthAttribute < ActiveRecord::Migration[5.1]
  def change
    change_column :players, :strength, :integer, default: 1
  end
end
