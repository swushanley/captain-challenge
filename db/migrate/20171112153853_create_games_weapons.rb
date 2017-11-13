class CreateGamesWeapons < ActiveRecord::Migration[5.1]
  def change
    create_table :games_weapons do |t|
      t.column 'games_id', :integer
      t.column 'weapons_id', :integer
    end
  end
end
