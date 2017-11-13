class Game < ApplicationRecord
  has_and_belongs_to_many :players
  accepts_nested_attributes_for :players, reject_if: :check_player

  def check_player(player_attr)
    if _player = Player.find_by(name: player_attr['name'])
      self.players << _player
      return true
    end
    return false
  end

  def run_game
    player_1 = self.players.first
    player_2 = self.players.last
    loop do
      player_1.send([:defend, :attack].sample, player_2)
      player_2.send([:defend, :attack].sample, player_1)
      if player_1.health <= 0 || player_2.health <= 0
        if player_1.health > player_2.health
          break [player_1.id, player_1.damage]
        else
          break [player_2.id, player_2.damage]
        end
      end
    end
  end

end
