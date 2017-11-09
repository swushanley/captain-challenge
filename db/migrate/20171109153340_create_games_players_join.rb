class CreateGamesPlayersJoin < ActiveRecord::Migration[5.1]
  def change
    create_table :games_players, id: false do |t|
      t.column 'category_id', :integer
      t.column 'product_id', :integer
    end
  end
end
