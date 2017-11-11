class CreatePlayersWeaponsJoin < ActiveRecord::Migration[5.1]
  def change
    create_table :players_weapons do |t|
      t.column 'player_id', :integer
      t.column 'weapon_id', :integer
    end
  end
end
