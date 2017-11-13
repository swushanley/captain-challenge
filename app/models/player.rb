class Player < ApplicationRecord
  has_and_belongs_to_many :weapons
  has_and_belongs_to_many :games
  accepts_nested_attributes_for :weapons, reject_if: :check_weapon

  def check_weapon(weapon_attr)
    if _weapon = Weapon.find_by(name: weapon_attr['name'])
      self.weapons << _weapon
      return true
    end
    return false
  end

  def attack_force
    self.strength * (self.weapons.first.power + rand(10))
  end

  def agility
    100 - self.weapons.first.speed
  end

  def attack(opponent)
    damage_created = attack_force
    opponent.health -= damage_created
    self.strength -= (agility / 100 )
    self.damage += damage_created
  end

  def defend(attacker)
    self.health -= rand(10)
  end

end
