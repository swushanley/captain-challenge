class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :health
      t.string :weapon

      t.timestamps
    end
  end
end
