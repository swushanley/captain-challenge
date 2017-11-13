class Game < ApplicationRecord
  has_and_belongs_to_many :players
  accepts_nested_attributes_for :players

  def check_player(player_attr)
    if _player = Player.find_by(name: player_attr['name'])
      self.players << _player
      return true
    end
    return false
  end

  # def run_game
  #   loop do
  #     self.players.each do |player|
  #       player.send([:defend, :attack], self.players)

  #       if player.dead?
  #         break
  #       end
  #     end
  #   end
  # end


  def run_game
    player_1 = self.players.first
    player_2 = self.players.last
    final_score = []
    loop do
      player_1.send([:defend, :attack].sample, player_2)
      player_2.send([:defend, :attack].sample, player_1)
      if player_1.health <= 0 || player_2.health <= 0
        if player_1.health > player_2.health
          break player_1.id
        else
          break player_2.id
        end
      end
    end
  end

  # def name
  #   "#{self.players.first} v. #{self.players.last}"
  # end

end
