class Player < ApplicationRecord
  belongs_to :weapons
  has_and_belongs_to_many :games
  accepts_nested_attributes_for :weapons, reject_if: :check_weapon

  protected

  def check_weapon(weapon_attr)
    if _weapon = Weapon.find(weapon_attr['id'])
      self.weapon = _weapon
      return true
    end
    return false
  end
end
